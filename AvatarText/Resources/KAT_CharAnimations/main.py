# アニメーターの作成にお使いください。
# このスクリプトはCC0です。


def make_char():

    with open("Char0.anim", "r") as f:
        pre_data = f.read()

    for i in range(128, 4097):
        data = pre_data.replace("Char0", f"Char{i}")
        with open(f"Char{i}.anim", "w") as f:
            f.write(data)
    # ------------------------------------------------------
    with open("CharEnd0.anim", "r") as f:
        pre_data = f.read()

    print("test")
    for i in range(128, 4097):
        data = pre_data.replace("Char0", f"Char{i}")
        data = data.replace("CharEnd0", f"CharEnd{i}")
        with open(f"CharEnd{i}.anim", "w") as f:
            f.write(data)


# -------------------------------------------


def make_test():
    with open("before", "r") as f:
        pre_data = f.read()

    with open("middle", "r") as f:
        middle_data = f.read()

    with open("after", "r") as f:
        post_data = f.read()

    with open(f"TEST.anim", "w") as f:
        f.write(pre_data + "\n")
        for i in range(0, 512):
            data = middle_data.replace("material._Char0", f"material._Char{i}")
            f.write(data + "\n")
        f.write(post_data)
