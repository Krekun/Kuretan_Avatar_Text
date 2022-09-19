// K's Avatar Text
//Copyright (C) 2022 Kuretan
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.


Shader "Unlit/AvatarTextShader"
{
	Properties
	{
		[Enum(Off,0,Front,1,Back,2)] _Culling ("Culling Mode", Int) = 2
		_MainTex("Texture", 2D) = "white" {}
		_TileX("Text Tile Count X", Float) = 16
		_TileY("Text Tile Count Y", Float) = 6
		_RowLength("Text Output Row Length", Float) = 32
		_RowColumns("Text Output Row Columns", Float) = 12

		_Char0("Character 0", Float) = 0
		_Char1("Character1", Float) = 0
		_Char2("Character2", Float) = 0
		_Char3("Character3", Float) = 0
		_Char4("Character4", Float) = 0
		_Char5("Character5", Float) = 0
		_Char6("Character6", Float) = 0
		_Char7("Character7", Float) = 0
		_Char8("Character8", Float) = 0
		_Char9("Character9", Float) = 0
		_Char10("Character10", Float) = 0
		_Char11("Character11", Float) = 0
		_Char12("Character12", Float) = 0
		_Char13("Character13", Float) = 0
		_Char14("Character14", Float) = 0
		_Char15("Character15", Float) = 0
		_Char16("Character16", Float) = 0
		_Char17("Character17", Float) = 0
		_Char18("Character18", Float) = 0
		_Char19("Character19", Float) = 0
		_Char20("Character20", Float) = 0
		_Char21("Character21", Float) = 0
		_Char22("Character22", Float) = 0
		_Char23("Character23", Float) = 0
		_Char24("Character24", Float) = 0
		_Char25("Character25", Float) = 0
		_Char26("Character26", Float) = 0
		_Char27("Character27", Float) = 0
		_Char28("Character28", Float) = 0
		_Char29("Character29", Float) = 0
		_Char30("Character30", Float) = 0
		_Char31("Character31", Float) = 0
		_Char32("Character32", Float) = 0
		_Char33("Character33", Float) = 0
		_Char34("Character34", Float) = 0
		_Char35("Character35", Float) = 0
		_Char36("Character36", Float) = 0
		_Char37("Character37", Float) = 0
		_Char38("Character38", Float) = 0
		_Char39("Character39", Float) = 0
		_Char40("Character40", Float) = 0
		_Char41("Character41", Float) = 0
		_Char42("Character42", Float) = 0
		_Char43("Character43", Float) = 0
		_Char44("Character44", Float) = 0
		_Char45("Character45", Float) = 0
		_Char46("Character46", Float) = 0
		_Char47("Character47", Float) = 0
		_Char48("Character48", Float) = 0
		_Char49("Character49", Float) = 0
		_Char50("Character50", Float) = 0
		_Char51("Character51", Float) = 0
		_Char52("Character52", Float) = 0
		_Char53("Character53", Float) = 0
		_Char54("Character54", Float) = 0
		_Char55("Character55", Float) = 0
		_Char56("Character56", Float) = 0
		_Char57("Character57", Float) = 0
		_Char58("Character58", Float) = 0
		_Char59("Character59", Float) = 0
		_Char60("Character60", Float) = 0
		_Char61("Character61", Float) = 0
		_Char62("Character62", Float) = 0
		_Char63("Character63", Float) = 0
		_Char64("Character64", Float) = 0
		_Char65("Character65", Float) = 0
		_Char66("Character66", Float) = 0
		_Char67("Character67", Float) = 0
		_Char68("Character68", Float) = 0
		_Char69("Character69", Float) = 0
		_Char70("Character70", Float) = 0
		_Char71("Character71", Float) = 0
		_Char72("Character72", Float) = 0
		_Char73("Character73", Float) = 0
		_Char74("Character74", Float) = 0
		_Char75("Character75", Float) = 0
		_Char76("Character76", Float) = 0
		_Char77("Character77", Float) = 0
		_Char78("Character78", Float) = 0
		_Char79("Character79", Float) = 0
		_Char80("Character80", Float) = 0
		_Char81("Character81", Float) = 0
		_Char82("Character82", Float) = 0
		_Char83("Character83", Float) = 0
		_Char84("Character84", Float) = 0
		_Char85("Character85", Float) = 0
		_Char86("Character86", Float) = 0
		_Char87("Character87", Float) = 0
		_Char88("Character88", Float) = 0
		_Char89("Character89", Float) = 0
		_Char90("Character90", Float) = 0
		_Char91("Character91", Float) = 0
		_Char92("Character92", Float) = 0
		_Char93("Character93", Float) = 0
		_Char94("Character94", Float) = 0
		_Char95("Character95", Float) = 0
		_Char96("Character96", Float) = 0
		_Char97("Character97", Float) = 0
		_Char98("Character98", Float) = 0
		_Char99("Character99", Float) = 0
		_Char100("Character100", Float) = 0
		_Char101("Character101", Float) = 0
		_Char102("Character102", Float) = 0
		_Char103("Character103", Float) = 0
		_Char104("Character104", Float) = 0
		_Char105("Character105", Float) = 0
		_Char106("Character106", Float) = 0
		_Char107("Character107", Float) = 0
		_Char108("Character108", Float) = 0
		_Char109("Character109", Float) = 0
		_Char110("Character110", Float) = 0
		_Char111("Character111", Float) = 0
		_Char112("Character112", Float) = 0
		_Char113("Character113", Float) = 0
		_Char114("Character114", Float) = 0
		_Char115("Character115", Float) = 0
		_Char116("Character116", Float) = 0
		_Char117("Character117", Float) = 0
		_Char118("Character118", Float) = 0
		_Char119("Character119", Float) = 0
		_Char120("Character120", Float) = 0
		_Char121("Character121", Float) = 0
		_Char122("Character122", Float) = 0
		_Char123("Character123", Float) = 0
		_Char124("Character124", Float) = 0
		_Char125("Character125", Float) = 0
		_Char126("Character126", Float) = 0
		_Char127("Character127", Float) = 0
		_Char128("Character128", Float) = 0
		_Char129("Character129", Float) = 0
		_Char130("Character130", Float) = 0
		_Char131("Character131", Float) = 0
		_Char132("Character132", Float) = 0
		_Char133("Character133", Float) = 0
		_Char134("Character134", Float) = 0
		_Char135("Character135", Float) = 0
		_Char136("Character136", Float) = 0
		_Char137("Character137", Float) = 0
		_Char138("Character138", Float) = 0
		_Char139("Character139", Float) = 0
		_Char140("Character140", Float) = 0
		_Char141("Character141", Float) = 0
		_Char142("Character142", Float) = 0
		_Char143("Character143", Float) = 0
		_Char144("Character144", Float) = 0
		_Char145("Character145", Float) = 0
		_Char146("Character146", Float) = 0
		_Char147("Character147", Float) = 0
		_Char148("Character148", Float) = 0
		_Char149("Character149", Float) = 0
		_Char150("Character150", Float) = 0
		_Char151("Character151", Float) = 0
		_Char152("Character152", Float) = 0
		_Char153("Character153", Float) = 0
		_Char154("Character154", Float) = 0
		_Char155("Character155", Float) = 0
		_Char156("Character156", Float) = 0
		_Char157("Character157", Float) = 0
		_Char158("Character158", Float) = 0
		_Char159("Character159", Float) = 0
		_Char160("Character160", Float) = 0
		_Char161("Character161", Float) = 0
		_Char162("Character162", Float) = 0
		_Char163("Character163", Float) = 0
		_Char164("Character164", Float) = 0
		_Char165("Character165", Float) = 0
		_Char166("Character166", Float) = 0
		_Char167("Character167", Float) = 0
		_Char168("Character168", Float) = 0
		_Char169("Character169", Float) = 0
		_Char170("Character170", Float) = 0
		_Char171("Character171", Float) = 0
		_Char172("Character172", Float) = 0
		_Char173("Character173", Float) = 0
		_Char174("Character174", Float) = 0
		_Char175("Character175", Float) = 0
		_Char176("Character176", Float) = 0
		_Char177("Character177", Float) = 0
		_Char178("Character178", Float) = 0
		_Char179("Character179", Float) = 0
		_Char180("Character180", Float) = 0
		_Char181("Character181", Float) = 0
		_Char182("Character182", Float) = 0
		_Char183("Character183", Float) = 0
		_Char184("Character184", Float) = 0
		_Char185("Character185", Float) = 0
		_Char186("Character186", Float) = 0
		_Char187("Character187", Float) = 0
		_Char188("Character188", Float) = 0
		_Char189("Character189", Float) = 0
		_Char190("Character190", Float) = 0
		_Char191("Character191", Float) = 0
		_Char192("Character192", Float) = 0
		_Char193("Character193", Float) = 0
		_Char194("Character194", Float) = 0
		_Char195("Character195", Float) = 0
		_Char196("Character196", Float) = 0
		_Char197("Character197", Float) = 0
		_Char198("Character198", Float) = 0
		_Char199("Character199", Float) = 0
		_Char200("Character200", Float) = 0
		_Char201("Character201", Float) = 0
		_Char202("Character202", Float) = 0
		_Char203("Character203", Float) = 0
		_Char204("Character204", Float) = 0
		_Char205("Character205", Float) = 0
		_Char206("Character206", Float) = 0
		_Char207("Character207", Float) = 0
		_Char208("Character208", Float) = 0
		_Char209("Character209", Float) = 0
		_Char210("Character210", Float) = 0
		_Char211("Character211", Float) = 0
		_Char212("Character212", Float) = 0
		_Char213("Character213", Float) = 0
		_Char214("Character214", Float) = 0
		_Char215("Character215", Float) = 0
		_Char216("Character216", Float) = 0
		_Char217("Character217", Float) = 0
		_Char218("Character218", Float) = 0
		_Char219("Character219", Float) = 0
		_Char220("Character220", Float) = 0
		_Char221("Character221", Float) = 0
		_Char222("Character222", Float) = 0
		_Char223("Character223", Float) = 0
		_Char224("Character224", Float) = 0
		_Char225("Character225", Float) = 0
		_Char226("Character226", Float) = 0
		_Char227("Character227", Float) = 0
		_Char228("Character228", Float) = 0
		_Char229("Character229", Float) = 0
		_Char230("Character230", Float) = 0
		_Char231("Character231", Float) = 0
		_Char232("Character232", Float) = 0
		_Char233("Character233", Float) = 0
		_Char234("Character234", Float) = 0
		_Char235("Character235", Float) = 0
		_Char236("Character236", Float) = 0
		_Char237("Character237", Float) = 0
		_Char238("Character238", Float) = 0
		_Char239("Character239", Float) = 0
		_Char240("Character240", Float) = 0
		_Char241("Character241", Float) = 0
		_Char242("Character242", Float) = 0
		_Char243("Character243", Float) = 0
		_Char244("Character244", Float) = 0
		_Char245("Character245", Float) = 0
		_Char246("Character246", Float) = 0
		_Char247("Character247", Float) = 0
		_Char248("Character248", Float) = 0
		_Char249("Character249", Float) = 0
		_Char250("Character250", Float) = 0
		_Char251("Character251", Float) = 0
		_Char252("Character252", Float) = 0
		_Char253("Character253", Float) = 0
		_Char254("Character254", Float) = 0
		_Char255("Character255", Float) = 0
		_Char256("Character256", Float) = 0
		_Char257("Character257", Float) = 0
		_Char258("Character258", Float) = 0
		_Char259("Character259", Float) = 0
		_Char260("Character260", Float) = 0
		_Char261("Character261", Float) = 0
		_Char262("Character262", Float) = 0
		_Char263("Character263", Float) = 0
		_Char264("Character264", Float) = 0
		_Char265("Character265", Float) = 0
		_Char266("Character266", Float) = 0
		_Char267("Character267", Float) = 0
		_Char268("Character268", Float) = 0
		_Char269("Character269", Float) = 0
		_Char270("Character270", Float) = 0
		_Char271("Character271", Float) = 0
		_Char272("Character272", Float) = 0
		_Char273("Character273", Float) = 0
		_Char274("Character274", Float) = 0
		_Char275("Character275", Float) = 0
		_Char276("Character276", Float) = 0
		_Char277("Character277", Float) = 0
		_Char278("Character278", Float) = 0
		_Char279("Character279", Float) = 0
		_Char280("Character280", Float) = 0
		_Char281("Character281", Float) = 0
		_Char282("Character282", Float) = 0
		_Char283("Character283", Float) = 0
		_Char284("Character284", Float) = 0
		_Char285("Character285", Float) = 0
		_Char286("Character286", Float) = 0
		_Char287("Character287", Float) = 0
		_Char288("Character288", Float) = 0
		_Char289("Character289", Float) = 0
		_Char290("Character290", Float) = 0
		_Char291("Character291", Float) = 0
		_Char292("Character292", Float) = 0
		_Char293("Character293", Float) = 0
		_Char294("Character294", Float) = 0
		_Char295("Character295", Float) = 0
		_Char296("Character296", Float) = 0
		_Char297("Character297", Float) = 0
		_Char298("Character298", Float) = 0
		_Char299("Character299", Float) = 0
		_Char300("Character300", Float) = 0
		_Char301("Character301", Float) = 0
		_Char302("Character302", Float) = 0
		_Char303("Character303", Float) = 0
		_Char304("Character304", Float) = 0
		_Char305("Character305", Float) = 0
		_Char306("Character306", Float) = 0
		_Char307("Character307", Float) = 0
		_Char308("Character308", Float) = 0
		_Char309("Character309", Float) = 0
		_Char310("Character310", Float) = 0
		_Char311("Character311", Float) = 0
		_Char312("Character312", Float) = 0
		_Char313("Character313", Float) = 0
		_Char314("Character314", Float) = 0
		_Char315("Character315", Float) = 0
		_Char316("Character316", Float) = 0
		_Char317("Character317", Float) = 0
		_Char318("Character318", Float) = 0
		_Char319("Character319", Float) = 0
		_Char320("Character320", Float) = 0
		_Char321("Character321", Float) = 0
		_Char322("Character322", Float) = 0
		_Char323("Character323", Float) = 0
		_Char324("Character324", Float) = 0
		_Char325("Character325", Float) = 0
		_Char326("Character326", Float) = 0
		_Char327("Character327", Float) = 0
		_Char328("Character328", Float) = 0
		_Char329("Character329", Float) = 0
		_Char330("Character330", Float) = 0
		_Char331("Character331", Float) = 0
		_Char332("Character332", Float) = 0
		_Char333("Character333", Float) = 0
		_Char334("Character334", Float) = 0
		_Char335("Character335", Float) = 0
		_Char336("Character336", Float) = 0
		_Char337("Character337", Float) = 0
		_Char338("Character338", Float) = 0
		_Char339("Character339", Float) = 0
		_Char340("Character340", Float) = 0
		_Char341("Character341", Float) = 0
		_Char342("Character342", Float) = 0
		_Char343("Character343", Float) = 0
		_Char344("Character344", Float) = 0
		_Char345("Character345", Float) = 0
		_Char346("Character346", Float) = 0
		_Char347("Character347", Float) = 0
		_Char348("Character348", Float) = 0
		_Char349("Character349", Float) = 0
		_Char350("Character350", Float) = 0
		_Char351("Character351", Float) = 0
		_Char352("Character352", Float) = 0
		_Char353("Character353", Float) = 0
		_Char354("Character354", Float) = 0
		_Char355("Character355", Float) = 0
		_Char356("Character356", Float) = 0
		_Char357("Character357", Float) = 0
		_Char358("Character358", Float) = 0
		_Char359("Character359", Float) = 0
		_Char360("Character360", Float) = 0
		_Char361("Character361", Float) = 0
		_Char362("Character362", Float) = 0
		_Char363("Character363", Float) = 0
		_Char364("Character364", Float) = 0
		_Char365("Character365", Float) = 0
		_Char366("Character366", Float) = 0
		_Char367("Character367", Float) = 0
		_Char368("Character368", Float) = 0
		_Char369("Character369", Float) = 0
		_Char370("Character370", Float) = 0
		_Char371("Character371", Float) = 0
		_Char372("Character372", Float) = 0
		_Char373("Character373", Float) = 0
		_Char374("Character374", Float) = 0
		_Char375("Character375", Float) = 0
		_Char376("Character376", Float) = 0
		_Char377("Character377", Float) = 0
		_Char378("Character378", Float) = 0
		_Char379("Character379", Float) = 0
		_Char380("Character380", Float) = 0
		_Char381("Character381", Float) = 0
		_Char382("Character382", Float) = 0
		_Char383("Character383", Float) = 0
		_Char384("Character384", Float) = 0
		_Char385("Character385", Float) = 0
		_Char386("Character386", Float) = 0
		_Char387("Character387", Float) = 0
		_Char388("Character388", Float) = 0
		_Char389("Character389", Float) = 0
		_Char390("Character390", Float) = 0
		_Char391("Character391", Float) = 0
		_Char392("Character392", Float) = 0
		_Char393("Character393", Float) = 0
		_Char394("Character394", Float) = 0
		_Char395("Character395", Float) = 0
		_Char396("Character396", Float) = 0
		_Char397("Character397", Float) = 0
		_Char398("Character398", Float) = 0
		_Char399("Character399", Float) = 0
		_Char400("Character400", Float) = 0
		_Char401("Character401", Float) = 0
		_Char402("Character402", Float) = 0
		_Char403("Character403", Float) = 0
		_Char404("Character404", Float) = 0
		_Char405("Character405", Float) = 0
		_Char406("Character406", Float) = 0
		_Char407("Character407", Float) = 0
		_Char408("Character408", Float) = 0
		_Char409("Character409", Float) = 0
		_Char410("Character410", Float) = 0
		_Char411("Character411", Float) = 0
		_Char412("Character412", Float) = 0
		_Char413("Character413", Float) = 0
		_Char414("Character414", Float) = 0
		_Char415("Character415", Float) = 0
		_Char416("Character416", Float) = 0
		_Char417("Character417", Float) = 0
		_Char418("Character418", Float) = 0
		_Char419("Character419", Float) = 0
		_Char420("Character420", Float) = 0
		_Char421("Character421", Float) = 0
		_Char422("Character422", Float) = 0
		_Char423("Character423", Float) = 0
		_Char424("Character424", Float) = 0
		_Char425("Character425", Float) = 0
		_Char426("Character426", Float) = 0
		_Char427("Character427", Float) = 0
		_Char428("Character428", Float) = 0
		_Char429("Character429", Float) = 0
		_Char430("Character430", Float) = 0
		_Char431("Character431", Float) = 0
		_Char432("Character432", Float) = 0
		_Char433("Character433", Float) = 0
		_Char434("Character434", Float) = 0
		_Char435("Character435", Float) = 0
		_Char436("Character436", Float) = 0
		_Char437("Character437", Float) = 0
		_Char438("Character438", Float) = 0
		_Char439("Character439", Float) = 0
		_Char440("Character440", Float) = 0
		_Char441("Character441", Float) = 0
		_Char442("Character442", Float) = 0
		_Char443("Character443", Float) = 0
		_Char444("Character444", Float) = 0
		_Char445("Character445", Float) = 0
		_Char446("Character446", Float) = 0
		_Char447("Character447", Float) = 0
		_Char448("Character448", Float) = 0
		_Char449("Character449", Float) = 0
		_Char450("Character450", Float) = 0
		_Char451("Character451", Float) = 0
		_Char452("Character452", Float) = 0
		_Char453("Character453", Float) = 0
		_Char454("Character454", Float) = 0
		_Char455("Character455", Float) = 0
		_Char456("Character456", Float) = 0
		_Char457("Character457", Float) = 0
		_Char458("Character458", Float) = 0
		_Char459("Character459", Float) = 0
		_Char460("Character460", Float) = 0
		_Char461("Character461", Float) = 0
		_Char462("Character462", Float) = 0
		_Char463("Character463", Float) = 0
		_Char464("Character464", Float) = 0
		_Char465("Character465", Float) = 0
		_Char466("Character466", Float) = 0
		_Char467("Character467", Float) = 0
		_Char468("Character468", Float) = 0
		_Char469("Character469", Float) = 0
		_Char470("Character470", Float) = 0
		_Char471("Character471", Float) = 0
		_Char472("Character472", Float) = 0
		_Char473("Character473", Float) = 0
		_Char474("Character474", Float) = 0
		_Char475("Character475", Float) = 0
		_Char476("Character476", Float) = 0
		_Char477("Character477", Float) = 0
		_Char478("Character478", Float) = 0
		_Char479("Character479", Float) = 0
		_Char480("Character480", Float) = 0
		_Char481("Character481", Float) = 0
		_Char482("Character482", Float) = 0
		_Char483("Character483", Float) = 0
		_Char484("Character484", Float) = 0
		_Char485("Character485", Float) = 0
		_Char486("Character486", Float) = 0
		_Char487("Character487", Float) = 0
		_Char488("Character488", Float) = 0
		_Char489("Character489", Float) = 0
		_Char490("Character490", Float) = 0
		_Char491("Character491", Float) = 0
		_Char492("Character492", Float) = 0
		_Char493("Character493", Float) = 0
		_Char494("Character494", Float) = 0
		_Char495("Character495", Float) = 0
		_Char496("Character496", Float) = 0
		_Char497("Character497", Float) = 0
		_Char498("Character498", Float) = 0
		_Char499("Character499", Float) = 0
		_Char500("Character500", Float) = 0
		_Char501("Character501", Float) = 0
		_Char502("Character502", Float) = 0
		_Char503("Character503", Float) = 0
		_Char504("Character504", Float) = 0
		_Char505("Character505", Float) = 0
		_Char506("Character506", Float) = 0
		_Char507("Character507", Float) = 0
		_Char508("Character508", Float) = 0
		_Char509("Character509", Float) = 0
		_Char510("Character510", Float) = 0
		_Char511("Character511", Float) = 0

	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100
		// Blend SrcAlpha OneMinusSrcAlpha
		Cull [_Culling]

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog

			#include "UnityCG.cginc"

			sampler2D _MainTex;
			float4 _MainTex_ST;

			float _TileX;
			float _TileY;
			float _RowLength;
			float _RowColumns;

			// Please send me support for arrays using shader properties
					float _Char0;
		float _Char1;
		float _Char2;
		float _Char3;
		float _Char4;
		float _Char5;
		float _Char6;
		float _Char7;
		float _Char8;
		float _Char9;
		float _Char10;
		float _Char11;
		float _Char12;
		float _Char13;
		float _Char14;
		float _Char15;
		float _Char16;
		float _Char17;
		float _Char18;
		float _Char19;
		float _Char20;
		float _Char21;
		float _Char22;
		float _Char23;
		float _Char24;
		float _Char25;
		float _Char26;
		float _Char27;
		float _Char28;
		float _Char29;
		float _Char30;
		float _Char31;
		float _Char32;
		float _Char33;
		float _Char34;
		float _Char35;
		float _Char36;
		float _Char37;
		float _Char38;
		float _Char39;
		float _Char40;
		float _Char41;
		float _Char42;
		float _Char43;
		float _Char44;
		float _Char45;
		float _Char46;
		float _Char47;
		float _Char48;
		float _Char49;
		float _Char50;
		float _Char51;
		float _Char52;
		float _Char53;
		float _Char54;
		float _Char55;
		float _Char56;
		float _Char57;
		float _Char58;
		float _Char59;
		float _Char60;
		float _Char61;
		float _Char62;
		float _Char63;
		float _Char64;
		float _Char65;
		float _Char66;
		float _Char67;
		float _Char68;
		float _Char69;
		float _Char70;
		float _Char71;
		float _Char72;
		float _Char73;
		float _Char74;
		float _Char75;
		float _Char76;
		float _Char77;
		float _Char78;
		float _Char79;
		float _Char80;
		float _Char81;
		float _Char82;
		float _Char83;
		float _Char84;
		float _Char85;
		float _Char86;
		float _Char87;
		float _Char88;
		float _Char89;
		float _Char90;
		float _Char91;
		float _Char92;
		float _Char93;
		float _Char94;
		float _Char95;
		float _Char96;
		float _Char97;
		float _Char98;
		float _Char99;
		float _Char100;
		float _Char101;
		float _Char102;
		float _Char103;
		float _Char104;
		float _Char105;
		float _Char106;
		float _Char107;
		float _Char108;
		float _Char109;
		float _Char110;
		float _Char111;
		float _Char112;
		float _Char113;
		float _Char114;
		float _Char115;
		float _Char116;
		float _Char117;
		float _Char118;
		float _Char119;
		float _Char120;
		float _Char121;
		float _Char122;
		float _Char123;
		float _Char124;
		float _Char125;
		float _Char126;
		float _Char127;
		float _Char128;
		float _Char129;
		float _Char130;
		float _Char131;
		float _Char132;
		float _Char133;
		float _Char134;
		float _Char135;
		float _Char136;
		float _Char137;
		float _Char138;
		float _Char139;
		float _Char140;
		float _Char141;
		float _Char142;
		float _Char143;
		float _Char144;
		float _Char145;
		float _Char146;
		float _Char147;
		float _Char148;
		float _Char149;
		float _Char150;
		float _Char151;
		float _Char152;
		float _Char153;
		float _Char154;
		float _Char155;
		float _Char156;
		float _Char157;
		float _Char158;
		float _Char159;
		float _Char160;
		float _Char161;
		float _Char162;
		float _Char163;
		float _Char164;
		float _Char165;
		float _Char166;
		float _Char167;
		float _Char168;
		float _Char169;
		float _Char170;
		float _Char171;
		float _Char172;
		float _Char173;
		float _Char174;
		float _Char175;
		float _Char176;
		float _Char177;
		float _Char178;
		float _Char179;
		float _Char180;
		float _Char181;
		float _Char182;
		float _Char183;
		float _Char184;
		float _Char185;
		float _Char186;
		float _Char187;
		float _Char188;
		float _Char189;
		float _Char190;
		float _Char191;
		float _Char192;
		float _Char193;
		float _Char194;
		float _Char195;
		float _Char196;
		float _Char197;
		float _Char198;
		float _Char199;
		float _Char200;
		float _Char201;
		float _Char202;
		float _Char203;
		float _Char204;
		float _Char205;
		float _Char206;
		float _Char207;
		float _Char208;
		float _Char209;
		float _Char210;
		float _Char211;
		float _Char212;
		float _Char213;
		float _Char214;
		float _Char215;
		float _Char216;
		float _Char217;
		float _Char218;
		float _Char219;
		float _Char220;
		float _Char221;
		float _Char222;
		float _Char223;
		float _Char224;
		float _Char225;
		float _Char226;
		float _Char227;
		float _Char228;
		float _Char229;
		float _Char230;
		float _Char231;
		float _Char232;
		float _Char233;
		float _Char234;
		float _Char235;
		float _Char236;
		float _Char237;
		float _Char238;
		float _Char239;
		float _Char240;
		float _Char241;
		float _Char242;
		float _Char243;
		float _Char244;
		float _Char245;
		float _Char246;
		float _Char247;
		float _Char248;
		float _Char249;
		float _Char250;
		float _Char251;
		float _Char252;
		float _Char253;
		float _Char254;
		float _Char255;
		float _Char256;
		float _Char257;
		float _Char258;
		float _Char259;
		float _Char260;
		float _Char261;
		float _Char262;
		float _Char263;
		float _Char264;
		float _Char265;
		float _Char266;
		float _Char267;
		float _Char268;
		float _Char269;
		float _Char270;
		float _Char271;
		float _Char272;
		float _Char273;
		float _Char274;
		float _Char275;
		float _Char276;
		float _Char277;
		float _Char278;
		float _Char279;
		float _Char280;
		float _Char281;
		float _Char282;
		float _Char283;
		float _Char284;
		float _Char285;
		float _Char286;
		float _Char287;
		float _Char288;
		float _Char289;
		float _Char290;
		float _Char291;
		float _Char292;
		float _Char293;
		float _Char294;
		float _Char295;
		float _Char296;
		float _Char297;
		float _Char298;
		float _Char299;
		float _Char300;
		float _Char301;
		float _Char302;
		float _Char303;
		float _Char304;
		float _Char305;
		float _Char306;
		float _Char307;
		float _Char308;
		float _Char309;
		float _Char310;
		float _Char311;
		float _Char312;
		float _Char313;
		float _Char314;
		float _Char315;
		float _Char316;
		float _Char317;
		float _Char318;
		float _Char319;
		float _Char320;
		float _Char321;
		float _Char322;
		float _Char323;
		float _Char324;
		float _Char325;
		float _Char326;
		float _Char327;
		float _Char328;
		float _Char329;
		float _Char330;
		float _Char331;
		float _Char332;
		float _Char333;
		float _Char334;
		float _Char335;
		float _Char336;
		float _Char337;
		float _Char338;
		float _Char339;
		float _Char340;
		float _Char341;
		float _Char342;
		float _Char343;
		float _Char344;
		float _Char345;
		float _Char346;
		float _Char347;
		float _Char348;
		float _Char349;
		float _Char350;
		float _Char351;
		float _Char352;
		float _Char353;
		float _Char354;
		float _Char355;
		float _Char356;
		float _Char357;
		float _Char358;
		float _Char359;
		float _Char360;
		float _Char361;
		float _Char362;
		float _Char363;
		float _Char364;
		float _Char365;
		float _Char366;
		float _Char367;
		float _Char368;
		float _Char369;
		float _Char370;
		float _Char371;
		float _Char372;
		float _Char373;
		float _Char374;
		float _Char375;
		float _Char376;
		float _Char377;
		float _Char378;
		float _Char379;
		float _Char380;
		float _Char381;
		float _Char382;
		float _Char383;
		float _Char384;
		float _Char385;
		float _Char386;
		float _Char387;
		float _Char388;
		float _Char389;
		float _Char390;
		float _Char391;
		float _Char392;
		float _Char393;
		float _Char394;
		float _Char395;
		float _Char396;
		float _Char397;
		float _Char398;
		float _Char399;
		float _Char400;
		float _Char401;
		float _Char402;
		float _Char403;
		float _Char404;
		float _Char405;
		float _Char406;
		float _Char407;
		float _Char408;
		float _Char409;
		float _Char410;
		float _Char411;
		float _Char412;
		float _Char413;
		float _Char414;
		float _Char415;
		float _Char416;
		float _Char417;
		float _Char418;
		float _Char419;
		float _Char420;
		float _Char421;
		float _Char422;
		float _Char423;
		float _Char424;
		float _Char425;
		float _Char426;
		float _Char427;
		float _Char428;
		float _Char429;
		float _Char430;
		float _Char431;
		float _Char432;
		float _Char433;
		float _Char434;
		float _Char435;
		float _Char436;
		float _Char437;
		float _Char438;
		float _Char439;
		float _Char440;
		float _Char441;
		float _Char442;
		float _Char443;
		float _Char444;
		float _Char445;
		float _Char446;
		float _Char447;
		float _Char448;
		float _Char449;
		float _Char450;
		float _Char451;
		float _Char452;
		float _Char453;
		float _Char454;
		float _Char455;
		float _Char456;
		float _Char457;
		float _Char458;
		float _Char459;
		float _Char460;
		float _Char461;
		float _Char462;
		float _Char463;
		float _Char464;
		float _Char465;
		float _Char466;
		float _Char467;
		float _Char468;
		float _Char469;
		float _Char470;
		float _Char471;
		float _Char472;
		float _Char473;
		float _Char474;
		float _Char475;
		float _Char476;
		float _Char477;
		float _Char478;
		float _Char479;
		float _Char480;
		float _Char481;
		float _Char482;
		float _Char483;
		float _Char484;
		float _Char485;
		float _Char486;
		float _Char487;
		float _Char488;
		float _Char489;
		float _Char490;
		float _Char491;
		float _Char492;
		float _Char493;
		float _Char494;
		float _Char495;
		float _Char496;
		float _Char497;
		float _Char498;
		float _Char499;
		float _Char500;
		float _Char501;
		float _Char502;
		float _Char503;
		float _Char504;
		float _Char505;
		float _Char506;
		float _Char507;
		float _Char508;
		float _Char509;
		float _Char510;
		float _Char511;

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}

			fixed4 frag (v2f i, uint facing: SV_IsFrontFace) : SV_Target
			{
				// Flip text if looking at the backface
				if (!facing) {
					i.uv.x = 1.0 - i.uv.x;
				}

				// Flip text if looking at the mirror
				if (unity_CameraProjection[2][0] != 0.0 || unity_CameraProjection[2][1] != 0.0) {
					i.uv.x = 1.0 - i.uv.x;
				}

				// Really, I'd like to have arrays using shader properties
				float chars[512];
				chars[0] = _Char0;
				chars[1] = _Char1;
				chars[2] = _Char2;
				chars[3] = _Char3;
				chars[4] = _Char4;
				chars[5] = _Char5;
				chars[6] = _Char6;
				chars[7] = _Char7;
				chars[8] = _Char8;
				chars[9] = _Char9;
				chars[10] = _Char10;
				chars[11] = _Char11;
				chars[12] = _Char12;
				chars[13] = _Char13;
				chars[14] = _Char14;
				chars[15] = _Char15;
				chars[16] = _Char16;
				chars[17] = _Char17;
				chars[18] = _Char18;
				chars[19] = _Char19;
				chars[20] = _Char20;
				chars[21] = _Char21;
				chars[22] = _Char22;
				chars[23] = _Char23;
				chars[24] = _Char24;
				chars[25] = _Char25;
				chars[26] = _Char26;
				chars[27] = _Char27;
				chars[28] = _Char28;
				chars[29] = _Char29;
				chars[30] = _Char30;
				chars[31] = _Char31;
				chars[32] = _Char32;
				chars[33] = _Char33;
				chars[34] = _Char34;
				chars[35] = _Char35;
				chars[36] = _Char36;
				chars[37] = _Char37;
				chars[38] = _Char38;
				chars[39] = _Char39;
				chars[40] = _Char40;
				chars[41] = _Char41;
				chars[42] = _Char42;
				chars[43] = _Char43;
				chars[44] = _Char44;
				chars[45] = _Char45;
				chars[46] = _Char46;
				chars[47] = _Char47;
				chars[48] = _Char48;
				chars[49] = _Char49;
				chars[50] = _Char50;
				chars[51] = _Char51;
				chars[52] = _Char52;
				chars[53] = _Char53;
				chars[54] = _Char54;
				chars[55] = _Char55;
				chars[56] = _Char56;
				chars[57] = _Char57;
				chars[58] = _Char58;
				chars[59] = _Char59;
				chars[60] = _Char60;
				chars[61] = _Char61;
				chars[62] = _Char62;
				chars[63] = _Char63;
				chars[64] = _Char64;
				chars[65] = _Char65;
				chars[66] = _Char66;
				chars[67] = _Char67;
				chars[68] = _Char68;
				chars[69] = _Char69;
				chars[70] = _Char70;
				chars[71] = _Char71;
				chars[72] = _Char72;
				chars[73] = _Char73;
				chars[74] = _Char74;
				chars[75] = _Char75;
				chars[76] = _Char76;
				chars[77] = _Char77;
				chars[78] = _Char78;
				chars[79] = _Char79;
				chars[80] = _Char80;
				chars[81] = _Char81;
				chars[82] = _Char82;
				chars[83] = _Char83;
				chars[84] = _Char84;
				chars[85] = _Char85;
				chars[86] = _Char86;
				chars[87] = _Char87;
				chars[88] = _Char88;
				chars[89] = _Char89;
				chars[90] = _Char90;
				chars[91] = _Char91;
				chars[92] = _Char92;
				chars[93] = _Char93;
				chars[94] = _Char94;
				chars[95] = _Char95;
				chars[96] = _Char96;
				chars[97] = _Char97;
				chars[98] = _Char98;
				chars[99] = _Char99;
				chars[100] = _Char100;
				chars[101] = _Char101;
				chars[102] = _Char102;
				chars[103] = _Char103;
				chars[104] = _Char104;
				chars[105] = _Char105;
				chars[106] = _Char106;
				chars[107] = _Char107;
				chars[108] = _Char108;
				chars[109] = _Char109;
				chars[110] = _Char110;
				chars[111] = _Char111;
				chars[112] = _Char112;
				chars[113] = _Char113;
				chars[114] = _Char114;
				chars[115] = _Char115;
				chars[116] = _Char116;
				chars[117] = _Char117;
				chars[118] = _Char118;
				chars[119] = _Char119;
				chars[120] = _Char120;
				chars[121] = _Char121;
				chars[122] = _Char122;
				chars[123] = _Char123;
				chars[124] = _Char124;
				chars[125] = _Char125;
				chars[126] = _Char126;
				chars[127] = _Char127;
				chars[128] = _Char128;
				chars[129] = _Char129;
				chars[130] = _Char130;
				chars[131] = _Char131;
				chars[132] = _Char132;
				chars[133] = _Char133;
				chars[134] = _Char134;
				chars[135] = _Char135;
				chars[136] = _Char136;
				chars[137] = _Char137;
				chars[138] = _Char138;
				chars[139] = _Char139;
				chars[140] = _Char140;
				chars[141] = _Char141;
				chars[142] = _Char142;
				chars[143] = _Char143;
				chars[144] = _Char144;
				chars[145] = _Char145;
				chars[146] = _Char146;
				chars[147] = _Char147;
				chars[148] = _Char148;
				chars[149] = _Char149;
				chars[150] = _Char150;
				chars[151] = _Char151;
				chars[152] = _Char152;
				chars[153] = _Char153;
				chars[154] = _Char154;
				chars[155] = _Char155;
				chars[156] = _Char156;
				chars[157] = _Char157;
				chars[158] = _Char158;
				chars[159] = _Char159;
				chars[160] = _Char160;
				chars[161] = _Char161;
				chars[162] = _Char162;
				chars[163] = _Char163;
				chars[164] = _Char164;
				chars[165] = _Char165;
				chars[166] = _Char166;
				chars[167] = _Char167;
				chars[168] = _Char168;
				chars[169] = _Char169;
				chars[170] = _Char170;
				chars[171] = _Char171;
				chars[172] = _Char172;
				chars[173] = _Char173;
				chars[174] = _Char174;
				chars[175] = _Char175;
				chars[176] = _Char176;
				chars[177] = _Char177;
				chars[178] = _Char178;
				chars[179] = _Char179;
				chars[180] = _Char180;
				chars[181] = _Char181;
				chars[182] = _Char182;
				chars[183] = _Char183;
				chars[184] = _Char184;
				chars[185] = _Char185;
				chars[186] = _Char186;
				chars[187] = _Char187;
				chars[188] = _Char188;
				chars[189] = _Char189;
				chars[190] = _Char190;
				chars[191] = _Char191;
				chars[192] = _Char192;
				chars[193] = _Char193;
				chars[194] = _Char194;
				chars[195] = _Char195;
				chars[196] = _Char196;
				chars[197] = _Char197;
				chars[198] = _Char198;
				chars[199] = _Char199;
				chars[200] = _Char200;
				chars[201] = _Char201;
				chars[202] = _Char202;
				chars[203] = _Char203;
				chars[204] = _Char204;
				chars[205] = _Char205;
				chars[206] = _Char206;
				chars[207] = _Char207;
				chars[208] = _Char208;
				chars[209] = _Char209;
				chars[210] = _Char210;
				chars[211] = _Char211;
				chars[212] = _Char212;
				chars[213] = _Char213;
				chars[214] = _Char214;
				chars[215] = _Char215;
				chars[216] = _Char216;
				chars[217] = _Char217;
				chars[218] = _Char218;
				chars[219] = _Char219;
				chars[220] = _Char220;
				chars[221] = _Char221;
				chars[222] = _Char222;
				chars[223] = _Char223;
				chars[224] = _Char224;
				chars[225] = _Char225;
				chars[226] = _Char226;
				chars[227] = _Char227;
				chars[228] = _Char228;
				chars[229] = _Char229;
				chars[230] = _Char230;
				chars[231] = _Char231;
				chars[232] = _Char232;
				chars[233] = _Char233;
				chars[234] = _Char234;
				chars[235] = _Char235;
				chars[236] = _Char236;
				chars[237] = _Char237;
				chars[238] = _Char238;
				chars[239] = _Char239;
				chars[240] = _Char240;
				chars[241] = _Char241;
				chars[242] = _Char242;
				chars[243] = _Char243;
				chars[244] = _Char244;
				chars[245] = _Char245;
				chars[246] = _Char246;
				chars[247] = _Char247;
				chars[248] = _Char248;
				chars[249] = _Char249;
				chars[250] = _Char250;
				chars[251] = _Char251;
				chars[252] = _Char252;
				chars[253] = _Char253;
				chars[254] = _Char254;
				chars[255] = _Char255;
				chars[256] = _Char256;
				chars[257] = _Char257;
				chars[258] = _Char258;
				chars[259] = _Char259;
				chars[260] = _Char260;
				chars[261] = _Char261;
				chars[262] = _Char262;
				chars[263] = _Char263;
				chars[264] = _Char264;
				chars[265] = _Char265;
				chars[266] = _Char266;
				chars[267] = _Char267;
				chars[268] = _Char268;
				chars[269] = _Char269;
				chars[270] = _Char270;
				chars[271] = _Char271;
				chars[272] = _Char272;
				chars[273] = _Char273;
				chars[274] = _Char274;
				chars[275] = _Char275;
				chars[276] = _Char276;
				chars[277] = _Char277;
				chars[278] = _Char278;
				chars[279] = _Char279;
				chars[280] = _Char280;
				chars[281] = _Char281;
				chars[282] = _Char282;
				chars[283] = _Char283;
				chars[284] = _Char284;
				chars[285] = _Char285;
				chars[286] = _Char286;
				chars[287] = _Char287;
				chars[288] = _Char288;
				chars[289] = _Char289;
				chars[290] = _Char290;
				chars[291] = _Char291;
				chars[292] = _Char292;
				chars[293] = _Char293;
				chars[294] = _Char294;
				chars[295] = _Char295;
				chars[296] = _Char296;
				chars[297] = _Char297;
				chars[298] = _Char298;
				chars[299] = _Char299;
				chars[300] = _Char300;
				chars[301] = _Char301;
				chars[302] = _Char302;
				chars[303] = _Char303;
				chars[304] = _Char304;
				chars[305] = _Char305;
				chars[306] = _Char306;
				chars[307] = _Char307;
				chars[308] = _Char308;
				chars[309] = _Char309;
				chars[310] = _Char310;
				chars[311] = _Char311;
				chars[312] = _Char312;
				chars[313] = _Char313;
				chars[314] = _Char314;
				chars[315] = _Char315;
				chars[316] = _Char316;
				chars[317] = _Char317;
				chars[318] = _Char318;
				chars[319] = _Char319;
				chars[320] = _Char320;
				chars[321] = _Char321;
				chars[322] = _Char322;
				chars[323] = _Char323;
				chars[324] = _Char324;
				chars[325] = _Char325;
				chars[326] = _Char326;
				chars[327] = _Char327;
				chars[328] = _Char328;
				chars[329] = _Char329;
				chars[330] = _Char330;
				chars[331] = _Char331;
				chars[332] = _Char332;
				chars[333] = _Char333;
				chars[334] = _Char334;
				chars[335] = _Char335;
				chars[336] = _Char336;
				chars[337] = _Char337;
				chars[338] = _Char338;
				chars[339] = _Char339;
				chars[340] = _Char340;
				chars[341] = _Char341;
				chars[342] = _Char342;
				chars[343] = _Char343;
				chars[344] = _Char344;
				chars[345] = _Char345;
				chars[346] = _Char346;
				chars[347] = _Char347;
				chars[348] = _Char348;
				chars[349] = _Char349;
				chars[350] = _Char350;
				chars[351] = _Char351;
				chars[352] = _Char352;
				chars[353] = _Char353;
				chars[354] = _Char354;
				chars[355] = _Char355;
				chars[356] = _Char356;
				chars[357] = _Char357;
				chars[358] = _Char358;
				chars[359] = _Char359;
				chars[360] = _Char360;
				chars[361] = _Char361;
				chars[362] = _Char362;
				chars[363] = _Char363;
				chars[364] = _Char364;
				chars[365] = _Char365;
				chars[366] = _Char366;
				chars[367] = _Char367;
				chars[368] = _Char368;
				chars[369] = _Char369;
				chars[370] = _Char370;
				chars[371] = _Char371;
				chars[372] = _Char372;
				chars[373] = _Char373;
				chars[374] = _Char374;
				chars[375] = _Char375;
				chars[376] = _Char376;
				chars[377] = _Char377;
				chars[378] = _Char378;
				chars[379] = _Char379;
				chars[380] = _Char380;
				chars[381] = _Char381;
				chars[382] = _Char382;
				chars[383] = _Char383;
				chars[384] = _Char384;
				chars[385] = _Char385;
				chars[386] = _Char386;
				chars[387] = _Char387;
				chars[388] = _Char388;
				chars[389] = _Char389;
				chars[390] = _Char390;
				chars[391] = _Char391;
				chars[392] = _Char392;
				chars[393] = _Char393;
				chars[394] = _Char394;
				chars[395] = _Char395;
				chars[396] = _Char396;
				chars[397] = _Char397;
				chars[398] = _Char398;
				chars[399] = _Char399;
				chars[400] = _Char400;
				chars[401] = _Char401;
				chars[402] = _Char402;
				chars[403] = _Char403;
				chars[404] = _Char404;
				chars[405] = _Char405;
				chars[406] = _Char406;
				chars[407] = _Char407;
				chars[408] = _Char408;
				chars[409] = _Char409;
				chars[410] = _Char410;
				chars[411] = _Char411;
				chars[412] = _Char412;
				chars[413] = _Char413;
				chars[414] = _Char414;
				chars[415] = _Char415;
				chars[416] = _Char416;
				chars[417] = _Char417;
				chars[418] = _Char418;
				chars[419] = _Char419;
				chars[420] = _Char420;
				chars[421] = _Char421;
				chars[422] = _Char422;
				chars[423] = _Char423;
				chars[424] = _Char424;
				chars[425] = _Char425;
				chars[426] = _Char426;
				chars[427] = _Char427;
				chars[428] = _Char428;
				chars[429] = _Char429;
				chars[430] = _Char430;
				chars[431] = _Char431;
				chars[432] = _Char432;
				chars[433] = _Char433;
				chars[434] = _Char434;
				chars[435] = _Char435;
				chars[436] = _Char436;
				chars[437] = _Char437;
				chars[438] = _Char438;
				chars[439] = _Char439;
				chars[440] = _Char440;
				chars[441] = _Char441;
				chars[442] = _Char442;
				chars[443] = _Char443;
				chars[444] = _Char444;
				chars[445] = _Char445;
				chars[446] = _Char446;
				chars[447] = _Char447;
				chars[448] = _Char448;
				chars[449] = _Char449;
				chars[450] = _Char450;
				chars[451] = _Char451;
				chars[452] = _Char452;
				chars[453] = _Char453;
				chars[454] = _Char454;
				chars[455] = _Char455;
				chars[456] = _Char456;
				chars[457] = _Char457;
				chars[458] = _Char458;
				chars[459] = _Char459;
				chars[460] = _Char460;
				chars[461] = _Char461;
				chars[462] = _Char462;
				chars[463] = _Char463;
				chars[464] = _Char464;
				chars[465] = _Char465;
				chars[466] = _Char466;
				chars[467] = _Char467;
				chars[468] = _Char468;
				chars[469] = _Char469;
				chars[470] = _Char470;
				chars[471] = _Char471;
				chars[472] = _Char472;
				chars[473] = _Char473;
				chars[474] = _Char474;
				chars[475] = _Char475;
				chars[476] = _Char476;
				chars[477] = _Char477;
				chars[478] = _Char478;
				chars[479] = _Char479;
				chars[480] = _Char480;
				chars[481] = _Char481;
				chars[482] = _Char482;
				chars[483] = _Char483;
				chars[484] = _Char484;
				chars[485] = _Char485;
				chars[486] = _Char486;
				chars[487] = _Char487;
				chars[488] = _Char488;
				chars[489] = _Char489;
				chars[490] = _Char490;
				chars[491] = _Char491;
				chars[492] = _Char492;
				chars[493] = _Char493;
				chars[494] = _Char494;
				chars[495] = _Char495;
				chars[496] = _Char496;
				chars[497] = _Char497;
				chars[498] = _Char498;
				chars[499] = _Char499;
				chars[500] = _Char500;
				chars[501] = _Char501;
				chars[502] = _Char502;
				chars[503] = _Char503;
				chars[504] = _Char504;
				chars[505] = _Char505;
				chars[506] = _Char506;
				chars[507] = _Char507;
				chars[508] = _Char508;
				chars[509] = _Char509;
				chars[510] = _Char510;
				chars[511] = _Char511;

				float2 uvSize = float2(_TileX, _TileY);
				float2 charSize = float2(_RowLength, _RowColumns);
				float2 uvTile = 1.0 / uvSize;
				float2 charTile = 1.0 / charSize;

				float charLimit = uvSize.x * uvSize.y;
				float charPosition = floor(i.uv.x * charSize.x) + floor((1.0 - i.uv.y) * charSize.y) * charSize.x;
				//float charCurrent = round(chars[clamp(charPosition, 0, 127)]);
				float charCurrent = round(chars[clamp(charPosition, 0, 511)]);
				charCurrent = min(charCurrent, charLimit);
				//charCurrent=charCurrent+chars[clamp(charPosition, 0, 127)+64]*128;// use two values to indicate one charactter
				charCurrent=charCurrent+chars[clamp(charPosition, 0, 511)+256]*128;// use two values to indicate one charactter
				// if (charCurrent < 0) {
				// 	charCurrent += floor(charCurrent / charLimit) * charLimit;
				// }

				float2 uvPosition = (fmod(i.uv * charSize, 1.0) / uvSize);
				float2 uvOffset = float2(fmod(charCurrent, uvSize.x) * uvTile.x, 1.0 - ((floor(charCurrent / uvSize.x) + 1.0) * uvTile.y));
				float2 uv = uvPosition + uvOffset;

				fixed4 col = tex2D(_MainTex, uv);
				clip(col.a - 0.1);
				UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}

			ENDCG
		}
	}
	FallBack "Unlit/Transparent"
}
