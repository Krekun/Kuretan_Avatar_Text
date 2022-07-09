/*
	Avatar Text for VRChat
	Copyright (C) 2022 Kuretan / Evan Tran
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
	GNU General Public License for more details.
	You should have received a copy of the GNU General Public License
	along with this program. If not, see <https://www.gnu.org/licenses/>.
*/

#if UNITY_EDITOR

using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.Animations;

using VRCAvatarDescriptor = VRC.SDK3.Avatars.Components.VRCAvatarDescriptor;

using Kuretan.AvatarTextTools.Settings;


namespace Kuretan.AvatarTextTools.Utility
{
	public static class KatObjectsInstaller
	{
		public static bool InstallObjectsToAvatar(VRCAvatarDescriptor avatarDescriptor, KatSettings settings)
		{
			Material textMaterial = Resources.Load<Material>("KAT_Misc/KAT_Text");;
			Transform avatarRootTransform = avatarDescriptor.gameObject.transform;
			Transform avatarAttachmentTransform = null;
			Vector3 avatarAttachmentOffset = new Vector3(0.0f, 1.0f, 0.4f);

			switch (settings.AttachmentPoint) {
				case KatAttachmentPoint.Head: {
					avatarAttachmentTransform = FindAvatarHead(avatarRootTransform);
					if (avatarAttachmentTransform == null) {
						Debug.LogWarning("Warning: Avatar head not found.");
					} else {
						avatarAttachmentOffset = new Vector3(-0.4f, 0.15f, 0.0f);
					}
					break;
				}
				case KatAttachmentPoint.Chest: {
					avatarAttachmentTransform = FindAvatarChest(avatarRootTransform);
					if (avatarAttachmentTransform == null) {
						Debug.LogWarning("Warning: Avatar chest not found.");
					} else {
						avatarAttachmentOffset = new Vector3(0.0f, 0.0f, 0.4f);
					}
					break;
				}
			}

			if (textMaterial == null) {
				Debug.LogError("Error: Material for Text not found.");
				return false;
			}



			GameObject katObject = new GameObject("KuretanAvatarText");
			katObject.transform.SetParent(avatarRootTransform);
			katObject.SetActive(false);

			GameObject constraintObject = new GameObject("Constraint");
			constraintObject.transform.SetParent(katObject.transform);

			if (avatarAttachmentTransform != null) {
				// Create constraint on avatar to stabilize rotation
				GameObject attachmentPoint = new GameObject(settings.TextAttachmentPointName);
				attachmentPoint.transform.SetParent(avatarAttachmentTransform);
				attachmentPoint.transform.localPosition = new Vector3(0, 0, 0);

				RotationConstraint constraintAvatar = attachmentPoint.AddComponent<RotationConstraint>();
				constraintAvatar.locked = true;
				constraintAvatar.rotationAxis = Axis.X | Axis.Z;

				ConstraintSource constraintAvatarSource = new ConstraintSource();
				constraintAvatarSource.sourceTransform = katObject.transform;
				constraintAvatarSource.weight = 1f;
				constraintAvatar.AddSource(constraintAvatarSource);
				constraintAvatar.constraintActive = true;

				GameObject attachmentTarget = new GameObject(settings.TextAttachmentPointName + "_Target");
				attachmentTarget.transform.SetParent(attachmentPoint.transform);
				attachmentTarget.transform.localPosition = avatarAttachmentOffset;

				// Create constraint on KAT to position text over the avatar
				ParentConstraint constraintText = constraintObject.AddComponent<ParentConstraint>();
				constraintText.locked = true;

				ConstraintSource constraintTextSource = new ConstraintSource();
				constraintTextSource.sourceTransform = attachmentTarget.transform;
				constraintTextSource.weight = 1f;
				constraintText.AddSource(constraintTextSource);

				if (settings.AttachmentPoint == KatAttachmentPoint.Chest) {
					constraintText.rotationAxis = Axis.Y;
				}

				

				constraintText.constraintActive = true;
			}

			GameObject textObject = GameObject.CreatePrimitive(PrimitiveType.Quad);
			textObject.name = "Text";
			textObject.transform.SetParent(constraintObject.transform);
			textObject.transform.localScale = new Vector3(0.5f, 1f / 6f, 1.0f);

			GameObject.DestroyImmediate(textObject.GetComponent<MeshCollider>());

			MeshRenderer textRenderer = textObject.GetComponent<MeshRenderer>();
			textRenderer.material = textMaterial;

			EditorSceneManager.MarkSceneDirty(avatarDescriptor.gameObject.scene);
			Debug.Log("Installation of objects to avatar completed.");
			return true;
		}

		public static bool RemoveObjectsFromAvatar(VRCAvatarDescriptor avatarDescriptor, KatSettings settings)
		{
			Transform avatarRootTransform = avatarDescriptor.gameObject.transform;
			Transform katObjectTransform = avatarRootTransform.transform.Find("KuretanAvatarText");
			if (katObjectTransform) {
				// Remove constraint target
				try {
					Transform katConstraintTransform = katObjectTransform.transform.Find("Constraint");
					ParentConstraint constraint = katConstraintTransform.GetComponent<ParentConstraint>();
					ConstraintSource constraintSource = constraint.GetSource(0);
					if (constraintSource.sourceTransform.parent.gameObject.name == settings.TextAttachmentPointName) {
						GameObject.DestroyImmediate(constraintSource.sourceTransform.parent.gameObject);
					}
				} catch {}

				// Remove parent object
				try {
					GameObject.DestroyImmediate(katObjectTransform.gameObject);
				} catch {
					Debug.LogWarning("Warning: Unable to destroy the KuretanAvatarText object.");
					return false;
				}
			}


			EditorSceneManager.MarkSceneDirty(avatarDescriptor.gameObject.scene);
			Debug.Log("Removal of objects from avatar completed.");
			return true;
		}

		private static Transform FindAvatarChest(Transform transform)
		{
			Transform chest = null;

			// Get chest from animator bone
			Animator animator = transform.GetComponent<Animator>();
			if (animator != null) {
				chest = animator.GetBoneTransform(HumanBodyBones.Chest);
				if (chest != null) {
					return chest;
				}
			}

			// Otherwise check bone transform names to find the head
			chest = FindTransformRecursive(transform, "chest");
			if (chest != null) {
				Transform neck = FindTransformRecursive(transform, "neck");
				if (neck != null) {
					return chest;
				}
			}

			return null;
		}

		private static Transform FindAvatarHead(Transform transform)
		{
			Transform head = null;

			// Get neck from animator bone
			Animator animator = transform.GetComponent<Animator>();
			if (animator != null) {
				head = animator.GetBoneTransform(HumanBodyBones.Head);
				if (head != null) {
					return head;
				}
			}

			// Otherwise check bone transform names to find the head
			Transform neck = FindTransformRecursive(transform, "neck");
			if (neck != null) {
				head = FindTransformRecursive(transform, "head");
				return head;
			}

			return null;
		}

		private static Transform FindTransformRecursive(Transform transform, string name)
		{
			foreach (Transform child in transform) {
				if (child.name.ToLower().Contains(name.ToLower())) {
					return child;
				} else {
					Transform found = FindTransformRecursive(child, name);
					if (found != null) {
						return found;
					}
				}
			}
			return null;
		}
	}
}

#endif