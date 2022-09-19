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
		_Char512("Character512", Float) = 0
		_Char513("Character513", Float) = 0
		_Char514("Character514", Float) = 0
		_Char515("Character515", Float) = 0
		_Char516("Character516", Float) = 0
		_Char517("Character517", Float) = 0
		_Char518("Character518", Float) = 0
		_Char519("Character519", Float) = 0
		_Char520("Character520", Float) = 0
		_Char521("Character521", Float) = 0
		_Char522("Character522", Float) = 0
		_Char523("Character523", Float) = 0
		_Char524("Character524", Float) = 0
		_Char525("Character525", Float) = 0
		_Char526("Character526", Float) = 0
		_Char527("Character527", Float) = 0
		_Char528("Character528", Float) = 0
		_Char529("Character529", Float) = 0
		_Char530("Character530", Float) = 0
		_Char531("Character531", Float) = 0
		_Char532("Character532", Float) = 0
		_Char533("Character533", Float) = 0
		_Char534("Character534", Float) = 0
		_Char535("Character535", Float) = 0
		_Char536("Character536", Float) = 0
		_Char537("Character537", Float) = 0
		_Char538("Character538", Float) = 0
		_Char539("Character539", Float) = 0
		_Char540("Character540", Float) = 0
		_Char541("Character541", Float) = 0
		_Char542("Character542", Float) = 0
		_Char543("Character543", Float) = 0
		_Char544("Character544", Float) = 0
		_Char545("Character545", Float) = 0
		_Char546("Character546", Float) = 0
		_Char547("Character547", Float) = 0
		_Char548("Character548", Float) = 0
		_Char549("Character549", Float) = 0
		_Char550("Character550", Float) = 0
		_Char551("Character551", Float) = 0
		_Char552("Character552", Float) = 0
		_Char553("Character553", Float) = 0
		_Char554("Character554", Float) = 0
		_Char555("Character555", Float) = 0
		_Char556("Character556", Float) = 0
		_Char557("Character557", Float) = 0
		_Char558("Character558", Float) = 0
		_Char559("Character559", Float) = 0
		_Char560("Character560", Float) = 0
		_Char561("Character561", Float) = 0
		_Char562("Character562", Float) = 0
		_Char563("Character563", Float) = 0
		_Char564("Character564", Float) = 0
		_Char565("Character565", Float) = 0
		_Char566("Character566", Float) = 0
		_Char567("Character567", Float) = 0
		_Char568("Character568", Float) = 0
		_Char569("Character569", Float) = 0
		_Char570("Character570", Float) = 0
		_Char571("Character571", Float) = 0
		_Char572("Character572", Float) = 0
		_Char573("Character573", Float) = 0
		_Char574("Character574", Float) = 0
		_Char575("Character575", Float) = 0
		_Char576("Character576", Float) = 0
		_Char577("Character577", Float) = 0
		_Char578("Character578", Float) = 0
		_Char579("Character579", Float) = 0
		_Char580("Character580", Float) = 0
		_Char581("Character581", Float) = 0
		_Char582("Character582", Float) = 0
		_Char583("Character583", Float) = 0
		_Char584("Character584", Float) = 0
		_Char585("Character585", Float) = 0
		_Char586("Character586", Float) = 0
		_Char587("Character587", Float) = 0
		_Char588("Character588", Float) = 0
		_Char589("Character589", Float) = 0
		_Char590("Character590", Float) = 0
		_Char591("Character591", Float) = 0
		_Char592("Character592", Float) = 0
		_Char593("Character593", Float) = 0
		_Char594("Character594", Float) = 0
		_Char595("Character595", Float) = 0
		_Char596("Character596", Float) = 0
		_Char597("Character597", Float) = 0
		_Char598("Character598", Float) = 0
		_Char599("Character599", Float) = 0
		_Char600("Character600", Float) = 0
		_Char601("Character601", Float) = 0
		_Char602("Character602", Float) = 0
		_Char603("Character603", Float) = 0
		_Char604("Character604", Float) = 0
		_Char605("Character605", Float) = 0
		_Char606("Character606", Float) = 0
		_Char607("Character607", Float) = 0
		_Char608("Character608", Float) = 0
		_Char609("Character609", Float) = 0
		_Char610("Character610", Float) = 0
		_Char611("Character611", Float) = 0
		_Char612("Character612", Float) = 0
		_Char613("Character613", Float) = 0
		_Char614("Character614", Float) = 0
		_Char615("Character615", Float) = 0
		_Char616("Character616", Float) = 0
		_Char617("Character617", Float) = 0
		_Char618("Character618", Float) = 0
		_Char619("Character619", Float) = 0
		_Char620("Character620", Float) = 0
		_Char621("Character621", Float) = 0
		_Char622("Character622", Float) = 0
		_Char623("Character623", Float) = 0
		_Char624("Character624", Float) = 0
		_Char625("Character625", Float) = 0
		_Char626("Character626", Float) = 0
		_Char627("Character627", Float) = 0
		_Char628("Character628", Float) = 0
		_Char629("Character629", Float) = 0
		_Char630("Character630", Float) = 0
		_Char631("Character631", Float) = 0
		_Char632("Character632", Float) = 0
		_Char633("Character633", Float) = 0
		_Char634("Character634", Float) = 0
		_Char635("Character635", Float) = 0
		_Char636("Character636", Float) = 0
		_Char637("Character637", Float) = 0
		_Char638("Character638", Float) = 0
		_Char639("Character639", Float) = 0
		_Char640("Character640", Float) = 0
		_Char641("Character641", Float) = 0
		_Char642("Character642", Float) = 0
		_Char643("Character643", Float) = 0
		_Char644("Character644", Float) = 0
		_Char645("Character645", Float) = 0
		_Char646("Character646", Float) = 0
		_Char647("Character647", Float) = 0
		_Char648("Character648", Float) = 0
		_Char649("Character649", Float) = 0
		_Char650("Character650", Float) = 0
		_Char651("Character651", Float) = 0
		_Char652("Character652", Float) = 0
		_Char653("Character653", Float) = 0
		_Char654("Character654", Float) = 0
		_Char655("Character655", Float) = 0
		_Char656("Character656", Float) = 0
		_Char657("Character657", Float) = 0
		_Char658("Character658", Float) = 0
		_Char659("Character659", Float) = 0
		_Char660("Character660", Float) = 0
		_Char661("Character661", Float) = 0
		_Char662("Character662", Float) = 0
		_Char663("Character663", Float) = 0
		_Char664("Character664", Float) = 0
		_Char665("Character665", Float) = 0
		_Char666("Character666", Float) = 0
		_Char667("Character667", Float) = 0
		_Char668("Character668", Float) = 0
		_Char669("Character669", Float) = 0
		_Char670("Character670", Float) = 0
		_Char671("Character671", Float) = 0
		_Char672("Character672", Float) = 0
		_Char673("Character673", Float) = 0
		_Char674("Character674", Float) = 0
		_Char675("Character675", Float) = 0
		_Char676("Character676", Float) = 0
		_Char677("Character677", Float) = 0
		_Char678("Character678", Float) = 0
		_Char679("Character679", Float) = 0
		_Char680("Character680", Float) = 0
		_Char681("Character681", Float) = 0
		_Char682("Character682", Float) = 0
		_Char683("Character683", Float) = 0
		_Char684("Character684", Float) = 0
		_Char685("Character685", Float) = 0
		_Char686("Character686", Float) = 0
		_Char687("Character687", Float) = 0
		_Char688("Character688", Float) = 0
		_Char689("Character689", Float) = 0
		_Char690("Character690", Float) = 0
		_Char691("Character691", Float) = 0
		_Char692("Character692", Float) = 0
		_Char693("Character693", Float) = 0
		_Char694("Character694", Float) = 0
		_Char695("Character695", Float) = 0
		_Char696("Character696", Float) = 0
		_Char697("Character697", Float) = 0
		_Char698("Character698", Float) = 0
		_Char699("Character699", Float) = 0
		_Char700("Character700", Float) = 0
		_Char701("Character701", Float) = 0
		_Char702("Character702", Float) = 0
		_Char703("Character703", Float) = 0
		_Char704("Character704", Float) = 0
		_Char705("Character705", Float) = 0
		_Char706("Character706", Float) = 0
		_Char707("Character707", Float) = 0
		_Char708("Character708", Float) = 0
		_Char709("Character709", Float) = 0
		_Char710("Character710", Float) = 0
		_Char711("Character711", Float) = 0
		_Char712("Character712", Float) = 0
		_Char713("Character713", Float) = 0
		_Char714("Character714", Float) = 0
		_Char715("Character715", Float) = 0
		_Char716("Character716", Float) = 0
		_Char717("Character717", Float) = 0
		_Char718("Character718", Float) = 0
		_Char719("Character719", Float) = 0
		_Char720("Character720", Float) = 0
		_Char721("Character721", Float) = 0
		_Char722("Character722", Float) = 0
		_Char723("Character723", Float) = 0
		_Char724("Character724", Float) = 0
		_Char725("Character725", Float) = 0
		_Char726("Character726", Float) = 0
		_Char727("Character727", Float) = 0
		_Char728("Character728", Float) = 0
		_Char729("Character729", Float) = 0
		_Char730("Character730", Float) = 0
		_Char731("Character731", Float) = 0
		_Char732("Character732", Float) = 0
		_Char733("Character733", Float) = 0
		_Char734("Character734", Float) = 0
		_Char735("Character735", Float) = 0
		_Char736("Character736", Float) = 0
		_Char737("Character737", Float) = 0
		_Char738("Character738", Float) = 0
		_Char739("Character739", Float) = 0
		_Char740("Character740", Float) = 0
		_Char741("Character741", Float) = 0
		_Char742("Character742", Float) = 0
		_Char743("Character743", Float) = 0
		_Char744("Character744", Float) = 0
		_Char745("Character745", Float) = 0
		_Char746("Character746", Float) = 0
		_Char747("Character747", Float) = 0
		_Char748("Character748", Float) = 0
		_Char749("Character749", Float) = 0
		_Char750("Character750", Float) = 0
		_Char751("Character751", Float) = 0
		_Char752("Character752", Float) = 0
		_Char753("Character753", Float) = 0
		_Char754("Character754", Float) = 0
		_Char755("Character755", Float) = 0
		_Char756("Character756", Float) = 0
		_Char757("Character757", Float) = 0
		_Char758("Character758", Float) = 0
		_Char759("Character759", Float) = 0
		_Char760("Character760", Float) = 0
		_Char761("Character761", Float) = 0
		_Char762("Character762", Float) = 0
		_Char763("Character763", Float) = 0
		_Char764("Character764", Float) = 0
		_Char765("Character765", Float) = 0
		_Char766("Character766", Float) = 0
		_Char767("Character767", Float) = 0
		_Char768("Character768", Float) = 0
		_Char769("Character769", Float) = 0
		_Char770("Character770", Float) = 0
		_Char771("Character771", Float) = 0
		_Char772("Character772", Float) = 0
		_Char773("Character773", Float) = 0
		_Char774("Character774", Float) = 0
		_Char775("Character775", Float) = 0
		_Char776("Character776", Float) = 0
		_Char777("Character777", Float) = 0
		_Char778("Character778", Float) = 0
		_Char779("Character779", Float) = 0
		_Char780("Character780", Float) = 0
		_Char781("Character781", Float) = 0
		_Char782("Character782", Float) = 0
		_Char783("Character783", Float) = 0
		_Char784("Character784", Float) = 0
		_Char785("Character785", Float) = 0
		_Char786("Character786", Float) = 0
		_Char787("Character787", Float) = 0
		_Char788("Character788", Float) = 0
		_Char789("Character789", Float) = 0
		_Char790("Character790", Float) = 0
		_Char791("Character791", Float) = 0
		_Char792("Character792", Float) = 0
		_Char793("Character793", Float) = 0
		_Char794("Character794", Float) = 0
		_Char795("Character795", Float) = 0
		_Char796("Character796", Float) = 0
		_Char797("Character797", Float) = 0
		_Char798("Character798", Float) = 0
		_Char799("Character799", Float) = 0
		_Char800("Character800", Float) = 0
		_Char801("Character801", Float) = 0
		_Char802("Character802", Float) = 0
		_Char803("Character803", Float) = 0
		_Char804("Character804", Float) = 0
		_Char805("Character805", Float) = 0
		_Char806("Character806", Float) = 0
		_Char807("Character807", Float) = 0
		_Char808("Character808", Float) = 0
		_Char809("Character809", Float) = 0
		_Char810("Character810", Float) = 0
		_Char811("Character811", Float) = 0
		_Char812("Character812", Float) = 0
		_Char813("Character813", Float) = 0
		_Char814("Character814", Float) = 0
		_Char815("Character815", Float) = 0
		_Char816("Character816", Float) = 0
		_Char817("Character817", Float) = 0
		_Char818("Character818", Float) = 0
		_Char819("Character819", Float) = 0
		_Char820("Character820", Float) = 0
		_Char821("Character821", Float) = 0
		_Char822("Character822", Float) = 0
		_Char823("Character823", Float) = 0
		_Char824("Character824", Float) = 0
		_Char825("Character825", Float) = 0
		_Char826("Character826", Float) = 0
		_Char827("Character827", Float) = 0
		_Char828("Character828", Float) = 0
		_Char829("Character829", Float) = 0
		_Char830("Character830", Float) = 0
		_Char831("Character831", Float) = 0
		_Char832("Character832", Float) = 0
		_Char833("Character833", Float) = 0
		_Char834("Character834", Float) = 0
		_Char835("Character835", Float) = 0
		_Char836("Character836", Float) = 0
		_Char837("Character837", Float) = 0
		_Char838("Character838", Float) = 0
		_Char839("Character839", Float) = 0
		_Char840("Character840", Float) = 0
		_Char841("Character841", Float) = 0
		_Char842("Character842", Float) = 0
		_Char843("Character843", Float) = 0
		_Char844("Character844", Float) = 0
		_Char845("Character845", Float) = 0
		_Char846("Character846", Float) = 0
		_Char847("Character847", Float) = 0
		_Char848("Character848", Float) = 0
		_Char849("Character849", Float) = 0
		_Char850("Character850", Float) = 0
		_Char851("Character851", Float) = 0
		_Char852("Character852", Float) = 0
		_Char853("Character853", Float) = 0
		_Char854("Character854", Float) = 0
		_Char855("Character855", Float) = 0
		_Char856("Character856", Float) = 0
		_Char857("Character857", Float) = 0
		_Char858("Character858", Float) = 0
		_Char859("Character859", Float) = 0
		_Char860("Character860", Float) = 0
		_Char861("Character861", Float) = 0
		_Char862("Character862", Float) = 0
		_Char863("Character863", Float) = 0
		_Char864("Character864", Float) = 0
		_Char865("Character865", Float) = 0
		_Char866("Character866", Float) = 0
		_Char867("Character867", Float) = 0
		_Char868("Character868", Float) = 0
		_Char869("Character869", Float) = 0
		_Char870("Character870", Float) = 0
		_Char871("Character871", Float) = 0
		_Char872("Character872", Float) = 0
		_Char873("Character873", Float) = 0
		_Char874("Character874", Float) = 0
		_Char875("Character875", Float) = 0
		_Char876("Character876", Float) = 0
		_Char877("Character877", Float) = 0
		_Char878("Character878", Float) = 0
		_Char879("Character879", Float) = 0
		_Char880("Character880", Float) = 0
		_Char881("Character881", Float) = 0
		_Char882("Character882", Float) = 0
		_Char883("Character883", Float) = 0
		_Char884("Character884", Float) = 0
		_Char885("Character885", Float) = 0
		_Char886("Character886", Float) = 0
		_Char887("Character887", Float) = 0
		_Char888("Character888", Float) = 0
		_Char889("Character889", Float) = 0
		_Char890("Character890", Float) = 0
		_Char891("Character891", Float) = 0
		_Char892("Character892", Float) = 0
		_Char893("Character893", Float) = 0
		_Char894("Character894", Float) = 0
		_Char895("Character895", Float) = 0
		_Char896("Character896", Float) = 0
		_Char897("Character897", Float) = 0
		_Char898("Character898", Float) = 0
		_Char899("Character899", Float) = 0
		_Char900("Character900", Float) = 0
		_Char901("Character901", Float) = 0
		_Char902("Character902", Float) = 0
		_Char903("Character903", Float) = 0
		_Char904("Character904", Float) = 0
		_Char905("Character905", Float) = 0
		_Char906("Character906", Float) = 0
		_Char907("Character907", Float) = 0
		_Char908("Character908", Float) = 0
		_Char909("Character909", Float) = 0
		_Char910("Character910", Float) = 0
		_Char911("Character911", Float) = 0
		_Char912("Character912", Float) = 0
		_Char913("Character913", Float) = 0
		_Char914("Character914", Float) = 0
		_Char915("Character915", Float) = 0
		_Char916("Character916", Float) = 0
		_Char917("Character917", Float) = 0
		_Char918("Character918", Float) = 0
		_Char919("Character919", Float) = 0
		_Char920("Character920", Float) = 0
		_Char921("Character921", Float) = 0
		_Char922("Character922", Float) = 0
		_Char923("Character923", Float) = 0
		_Char924("Character924", Float) = 0
		_Char925("Character925", Float) = 0
		_Char926("Character926", Float) = 0
		_Char927("Character927", Float) = 0
		_Char928("Character928", Float) = 0
		_Char929("Character929", Float) = 0
		_Char930("Character930", Float) = 0
		_Char931("Character931", Float) = 0
		_Char932("Character932", Float) = 0
		_Char933("Character933", Float) = 0
		_Char934("Character934", Float) = 0
		_Char935("Character935", Float) = 0
		_Char936("Character936", Float) = 0
		_Char937("Character937", Float) = 0
		_Char938("Character938", Float) = 0
		_Char939("Character939", Float) = 0
		_Char940("Character940", Float) = 0
		_Char941("Character941", Float) = 0
		_Char942("Character942", Float) = 0
		_Char943("Character943", Float) = 0
		_Char944("Character944", Float) = 0
		_Char945("Character945", Float) = 0
		_Char946("Character946", Float) = 0
		_Char947("Character947", Float) = 0
		_Char948("Character948", Float) = 0
		_Char949("Character949", Float) = 0
		_Char950("Character950", Float) = 0
		_Char951("Character951", Float) = 0
		_Char952("Character952", Float) = 0
		_Char953("Character953", Float) = 0
		_Char954("Character954", Float) = 0
		_Char955("Character955", Float) = 0
		_Char956("Character956", Float) = 0
		_Char957("Character957", Float) = 0
		_Char958("Character958", Float) = 0
		_Char959("Character959", Float) = 0
		_Char960("Character960", Float) = 0
		_Char961("Character961", Float) = 0
		_Char962("Character962", Float) = 0
		_Char963("Character963", Float) = 0
		_Char964("Character964", Float) = 0
		_Char965("Character965", Float) = 0
		_Char966("Character966", Float) = 0
		_Char967("Character967", Float) = 0
		_Char968("Character968", Float) = 0
		_Char969("Character969", Float) = 0
		_Char970("Character970", Float) = 0
		_Char971("Character971", Float) = 0
		_Char972("Character972", Float) = 0
		_Char973("Character973", Float) = 0
		_Char974("Character974", Float) = 0
		_Char975("Character975", Float) = 0
		_Char976("Character976", Float) = 0
		_Char977("Character977", Float) = 0
		_Char978("Character978", Float) = 0
		_Char979("Character979", Float) = 0
		_Char980("Character980", Float) = 0
		_Char981("Character981", Float) = 0
		_Char982("Character982", Float) = 0
		_Char983("Character983", Float) = 0
		_Char984("Character984", Float) = 0
		_Char985("Character985", Float) = 0
		_Char986("Character986", Float) = 0
		_Char987("Character987", Float) = 0
		_Char988("Character988", Float) = 0
		_Char989("Character989", Float) = 0
		_Char990("Character990", Float) = 0
		_Char991("Character991", Float) = 0
		_Char992("Character992", Float) = 0
		_Char993("Character993", Float) = 0
		_Char994("Character994", Float) = 0
		_Char995("Character995", Float) = 0
		_Char996("Character996", Float) = 0
		_Char997("Character997", Float) = 0
		_Char998("Character998", Float) = 0
		_Char999("Character999", Float) = 0
		_Char1000("Character1000", Float) = 0
		_Char1001("Character1001", Float) = 0
		_Char1002("Character1002", Float) = 0
		_Char1003("Character1003", Float) = 0
		_Char1004("Character1004", Float) = 0
		_Char1005("Character1005", Float) = 0
		_Char1006("Character1006", Float) = 0
		_Char1007("Character1007", Float) = 0
		_Char1008("Character1008", Float) = 0
		_Char1009("Character1009", Float) = 0
		_Char1010("Character1010", Float) = 0
		_Char1011("Character1011", Float) = 0
		_Char1012("Character1012", Float) = 0
		_Char1013("Character1013", Float) = 0
		_Char1014("Character1014", Float) = 0
		_Char1015("Character1015", Float) = 0
		_Char1016("Character1016", Float) = 0
		_Char1017("Character1017", Float) = 0
		_Char1018("Character1018", Float) = 0
		_Char1019("Character1019", Float) = 0
		_Char1020("Character1020", Float) = 0
		_Char1021("Character1021", Float) = 0
		_Char1022("Character1022", Float) = 0
		_Char1023("Character1023", Float) = 0

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
		float _Char512;
		float _Char513;
		float _Char514;
		float _Char515;
		float _Char516;
		float _Char517;
		float _Char518;
		float _Char519;
		float _Char520;
		float _Char521;
		float _Char522;
		float _Char523;
		float _Char524;
		float _Char525;
		float _Char526;
		float _Char527;
		float _Char528;
		float _Char529;
		float _Char530;
		float _Char531;
		float _Char532;
		float _Char533;
		float _Char534;
		float _Char535;
		float _Char536;
		float _Char537;
		float _Char538;
		float _Char539;
		float _Char540;
		float _Char541;
		float _Char542;
		float _Char543;
		float _Char544;
		float _Char545;
		float _Char546;
		float _Char547;
		float _Char548;
		float _Char549;
		float _Char550;
		float _Char551;
		float _Char552;
		float _Char553;
		float _Char554;
		float _Char555;
		float _Char556;
		float _Char557;
		float _Char558;
		float _Char559;
		float _Char560;
		float _Char561;
		float _Char562;
		float _Char563;
		float _Char564;
		float _Char565;
		float _Char566;
		float _Char567;
		float _Char568;
		float _Char569;
		float _Char570;
		float _Char571;
		float _Char572;
		float _Char573;
		float _Char574;
		float _Char575;
		float _Char576;
		float _Char577;
		float _Char578;
		float _Char579;
		float _Char580;
		float _Char581;
		float _Char582;
		float _Char583;
		float _Char584;
		float _Char585;
		float _Char586;
		float _Char587;
		float _Char588;
		float _Char589;
		float _Char590;
		float _Char591;
		float _Char592;
		float _Char593;
		float _Char594;
		float _Char595;
		float _Char596;
		float _Char597;
		float _Char598;
		float _Char599;
		float _Char600;
		float _Char601;
		float _Char602;
		float _Char603;
		float _Char604;
		float _Char605;
		float _Char606;
		float _Char607;
		float _Char608;
		float _Char609;
		float _Char610;
		float _Char611;
		float _Char612;
		float _Char613;
		float _Char614;
		float _Char615;
		float _Char616;
		float _Char617;
		float _Char618;
		float _Char619;
		float _Char620;
		float _Char621;
		float _Char622;
		float _Char623;
		float _Char624;
		float _Char625;
		float _Char626;
		float _Char627;
		float _Char628;
		float _Char629;
		float _Char630;
		float _Char631;
		float _Char632;
		float _Char633;
		float _Char634;
		float _Char635;
		float _Char636;
		float _Char637;
		float _Char638;
		float _Char639;
		float _Char640;
		float _Char641;
		float _Char642;
		float _Char643;
		float _Char644;
		float _Char645;
		float _Char646;
		float _Char647;
		float _Char648;
		float _Char649;
		float _Char650;
		float _Char651;
		float _Char652;
		float _Char653;
		float _Char654;
		float _Char655;
		float _Char656;
		float _Char657;
		float _Char658;
		float _Char659;
		float _Char660;
		float _Char661;
		float _Char662;
		float _Char663;
		float _Char664;
		float _Char665;
		float _Char666;
		float _Char667;
		float _Char668;
		float _Char669;
		float _Char670;
		float _Char671;
		float _Char672;
		float _Char673;
		float _Char674;
		float _Char675;
		float _Char676;
		float _Char677;
		float _Char678;
		float _Char679;
		float _Char680;
		float _Char681;
		float _Char682;
		float _Char683;
		float _Char684;
		float _Char685;
		float _Char686;
		float _Char687;
		float _Char688;
		float _Char689;
		float _Char690;
		float _Char691;
		float _Char692;
		float _Char693;
		float _Char694;
		float _Char695;
		float _Char696;
		float _Char697;
		float _Char698;
		float _Char699;
		float _Char700;
		float _Char701;
		float _Char702;
		float _Char703;
		float _Char704;
		float _Char705;
		float _Char706;
		float _Char707;
		float _Char708;
		float _Char709;
		float _Char710;
		float _Char711;
		float _Char712;
		float _Char713;
		float _Char714;
		float _Char715;
		float _Char716;
		float _Char717;
		float _Char718;
		float _Char719;
		float _Char720;
		float _Char721;
		float _Char722;
		float _Char723;
		float _Char724;
		float _Char725;
		float _Char726;
		float _Char727;
		float _Char728;
		float _Char729;
		float _Char730;
		float _Char731;
		float _Char732;
		float _Char733;
		float _Char734;
		float _Char735;
		float _Char736;
		float _Char737;
		float _Char738;
		float _Char739;
		float _Char740;
		float _Char741;
		float _Char742;
		float _Char743;
		float _Char744;
		float _Char745;
		float _Char746;
		float _Char747;
		float _Char748;
		float _Char749;
		float _Char750;
		float _Char751;
		float _Char752;
		float _Char753;
		float _Char754;
		float _Char755;
		float _Char756;
		float _Char757;
		float _Char758;
		float _Char759;
		float _Char760;
		float _Char761;
		float _Char762;
		float _Char763;
		float _Char764;
		float _Char765;
		float _Char766;
		float _Char767;
		float _Char768;
		float _Char769;
		float _Char770;
		float _Char771;
		float _Char772;
		float _Char773;
		float _Char774;
		float _Char775;
		float _Char776;
		float _Char777;
		float _Char778;
		float _Char779;
		float _Char780;
		float _Char781;
		float _Char782;
		float _Char783;
		float _Char784;
		float _Char785;
		float _Char786;
		float _Char787;
		float _Char788;
		float _Char789;
		float _Char790;
		float _Char791;
		float _Char792;
		float _Char793;
		float _Char794;
		float _Char795;
		float _Char796;
		float _Char797;
		float _Char798;
		float _Char799;
		float _Char800;
		float _Char801;
		float _Char802;
		float _Char803;
		float _Char804;
		float _Char805;
		float _Char806;
		float _Char807;
		float _Char808;
		float _Char809;
		float _Char810;
		float _Char811;
		float _Char812;
		float _Char813;
		float _Char814;
		float _Char815;
		float _Char816;
		float _Char817;
		float _Char818;
		float _Char819;
		float _Char820;
		float _Char821;
		float _Char822;
		float _Char823;
		float _Char824;
		float _Char825;
		float _Char826;
		float _Char827;
		float _Char828;
		float _Char829;
		float _Char830;
		float _Char831;
		float _Char832;
		float _Char833;
		float _Char834;
		float _Char835;
		float _Char836;
		float _Char837;
		float _Char838;
		float _Char839;
		float _Char840;
		float _Char841;
		float _Char842;
		float _Char843;
		float _Char844;
		float _Char845;
		float _Char846;
		float _Char847;
		float _Char848;
		float _Char849;
		float _Char850;
		float _Char851;
		float _Char852;
		float _Char853;
		float _Char854;
		float _Char855;
		float _Char856;
		float _Char857;
		float _Char858;
		float _Char859;
		float _Char860;
		float _Char861;
		float _Char862;
		float _Char863;
		float _Char864;
		float _Char865;
		float _Char866;
		float _Char867;
		float _Char868;
		float _Char869;
		float _Char870;
		float _Char871;
		float _Char872;
		float _Char873;
		float _Char874;
		float _Char875;
		float _Char876;
		float _Char877;
		float _Char878;
		float _Char879;
		float _Char880;
		float _Char881;
		float _Char882;
		float _Char883;
		float _Char884;
		float _Char885;
		float _Char886;
		float _Char887;
		float _Char888;
		float _Char889;
		float _Char890;
		float _Char891;
		float _Char892;
		float _Char893;
		float _Char894;
		float _Char895;
		float _Char896;
		float _Char897;
		float _Char898;
		float _Char899;
		float _Char900;
		float _Char901;
		float _Char902;
		float _Char903;
		float _Char904;
		float _Char905;
		float _Char906;
		float _Char907;
		float _Char908;
		float _Char909;
		float _Char910;
		float _Char911;
		float _Char912;
		float _Char913;
		float _Char914;
		float _Char915;
		float _Char916;
		float _Char917;
		float _Char918;
		float _Char919;
		float _Char920;
		float _Char921;
		float _Char922;
		float _Char923;
		float _Char924;
		float _Char925;
		float _Char926;
		float _Char927;
		float _Char928;
		float _Char929;
		float _Char930;
		float _Char931;
		float _Char932;
		float _Char933;
		float _Char934;
		float _Char935;
		float _Char936;
		float _Char937;
		float _Char938;
		float _Char939;
		float _Char940;
		float _Char941;
		float _Char942;
		float _Char943;
		float _Char944;
		float _Char945;
		float _Char946;
		float _Char947;
		float _Char948;
		float _Char949;
		float _Char950;
		float _Char951;
		float _Char952;
		float _Char953;
		float _Char954;
		float _Char955;
		float _Char956;
		float _Char957;
		float _Char958;
		float _Char959;
		float _Char960;
		float _Char961;
		float _Char962;
		float _Char963;
		float _Char964;
		float _Char965;
		float _Char966;
		float _Char967;
		float _Char968;
		float _Char969;
		float _Char970;
		float _Char971;
		float _Char972;
		float _Char973;
		float _Char974;
		float _Char975;
		float _Char976;
		float _Char977;
		float _Char978;
		float _Char979;
		float _Char980;
		float _Char981;
		float _Char982;
		float _Char983;
		float _Char984;
		float _Char985;
		float _Char986;
		float _Char987;
		float _Char988;
		float _Char989;
		float _Char990;
		float _Char991;
		float _Char992;
		float _Char993;
		float _Char994;
		float _Char995;
		float _Char996;
		float _Char997;
		float _Char998;
		float _Char999;
		float _Char1000;
		float _Char1001;
		float _Char1002;
		float _Char1003;
		float _Char1004;
		float _Char1005;
		float _Char1006;
		float _Char1007;
		float _Char1008;
		float _Char1009;
		float _Char1010;
		float _Char1011;
		float _Char1012;
		float _Char1013;
		float _Char1014;
		float _Char1015;
		float _Char1016;
		float _Char1017;
		float _Char1018;
		float _Char1019;
		float _Char1020;
		float _Char1021;
		float _Char1022;
		float _Char1023;

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
				float chars[1024];
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
				chars[512] = _Char512;
				chars[513] = _Char513;
				chars[514] = _Char514;
				chars[515] = _Char515;
				chars[516] = _Char516;
				chars[517] = _Char517;
				chars[518] = _Char518;
				chars[519] = _Char519;
				chars[520] = _Char520;
				chars[521] = _Char521;
				chars[522] = _Char522;
				chars[523] = _Char523;
				chars[524] = _Char524;
				chars[525] = _Char525;
				chars[526] = _Char526;
				chars[527] = _Char527;
				chars[528] = _Char528;
				chars[529] = _Char529;
				chars[530] = _Char530;
				chars[531] = _Char531;
				chars[532] = _Char532;
				chars[533] = _Char533;
				chars[534] = _Char534;
				chars[535] = _Char535;
				chars[536] = _Char536;
				chars[537] = _Char537;
				chars[538] = _Char538;
				chars[539] = _Char539;
				chars[540] = _Char540;
				chars[541] = _Char541;
				chars[542] = _Char542;
				chars[543] = _Char543;
				chars[544] = _Char544;
				chars[545] = _Char545;
				chars[546] = _Char546;
				chars[547] = _Char547;
				chars[548] = _Char548;
				chars[549] = _Char549;
				chars[550] = _Char550;
				chars[551] = _Char551;
				chars[552] = _Char552;
				chars[553] = _Char553;
				chars[554] = _Char554;
				chars[555] = _Char555;
				chars[556] = _Char556;
				chars[557] = _Char557;
				chars[558] = _Char558;
				chars[559] = _Char559;
				chars[560] = _Char560;
				chars[561] = _Char561;
				chars[562] = _Char562;
				chars[563] = _Char563;
				chars[564] = _Char564;
				chars[565] = _Char565;
				chars[566] = _Char566;
				chars[567] = _Char567;
				chars[568] = _Char568;
				chars[569] = _Char569;
				chars[570] = _Char570;
				chars[571] = _Char571;
				chars[572] = _Char572;
				chars[573] = _Char573;
				chars[574] = _Char574;
				chars[575] = _Char575;
				chars[576] = _Char576;
				chars[577] = _Char577;
				chars[578] = _Char578;
				chars[579] = _Char579;
				chars[580] = _Char580;
				chars[581] = _Char581;
				chars[582] = _Char582;
				chars[583] = _Char583;
				chars[584] = _Char584;
				chars[585] = _Char585;
				chars[586] = _Char586;
				chars[587] = _Char587;
				chars[588] = _Char588;
				chars[589] = _Char589;
				chars[590] = _Char590;
				chars[591] = _Char591;
				chars[592] = _Char592;
				chars[593] = _Char593;
				chars[594] = _Char594;
				chars[595] = _Char595;
				chars[596] = _Char596;
				chars[597] = _Char597;
				chars[598] = _Char598;
				chars[599] = _Char599;
				chars[600] = _Char600;
				chars[601] = _Char601;
				chars[602] = _Char602;
				chars[603] = _Char603;
				chars[604] = _Char604;
				chars[605] = _Char605;
				chars[606] = _Char606;
				chars[607] = _Char607;
				chars[608] = _Char608;
				chars[609] = _Char609;
				chars[610] = _Char610;
				chars[611] = _Char611;
				chars[612] = _Char612;
				chars[613] = _Char613;
				chars[614] = _Char614;
				chars[615] = _Char615;
				chars[616] = _Char616;
				chars[617] = _Char617;
				chars[618] = _Char618;
				chars[619] = _Char619;
				chars[620] = _Char620;
				chars[621] = _Char621;
				chars[622] = _Char622;
				chars[623] = _Char623;
				chars[624] = _Char624;
				chars[625] = _Char625;
				chars[626] = _Char626;
				chars[627] = _Char627;
				chars[628] = _Char628;
				chars[629] = _Char629;
				chars[630] = _Char630;
				chars[631] = _Char631;
				chars[632] = _Char632;
				chars[633] = _Char633;
				chars[634] = _Char634;
				chars[635] = _Char635;
				chars[636] = _Char636;
				chars[637] = _Char637;
				chars[638] = _Char638;
				chars[639] = _Char639;
				chars[640] = _Char640;
				chars[641] = _Char641;
				chars[642] = _Char642;
				chars[643] = _Char643;
				chars[644] = _Char644;
				chars[645] = _Char645;
				chars[646] = _Char646;
				chars[647] = _Char647;
				chars[648] = _Char648;
				chars[649] = _Char649;
				chars[650] = _Char650;
				chars[651] = _Char651;
				chars[652] = _Char652;
				chars[653] = _Char653;
				chars[654] = _Char654;
				chars[655] = _Char655;
				chars[656] = _Char656;
				chars[657] = _Char657;
				chars[658] = _Char658;
				chars[659] = _Char659;
				chars[660] = _Char660;
				chars[661] = _Char661;
				chars[662] = _Char662;
				chars[663] = _Char663;
				chars[664] = _Char664;
				chars[665] = _Char665;
				chars[666] = _Char666;
				chars[667] = _Char667;
				chars[668] = _Char668;
				chars[669] = _Char669;
				chars[670] = _Char670;
				chars[671] = _Char671;
				chars[672] = _Char672;
				chars[673] = _Char673;
				chars[674] = _Char674;
				chars[675] = _Char675;
				chars[676] = _Char676;
				chars[677] = _Char677;
				chars[678] = _Char678;
				chars[679] = _Char679;
				chars[680] = _Char680;
				chars[681] = _Char681;
				chars[682] = _Char682;
				chars[683] = _Char683;
				chars[684] = _Char684;
				chars[685] = _Char685;
				chars[686] = _Char686;
				chars[687] = _Char687;
				chars[688] = _Char688;
				chars[689] = _Char689;
				chars[690] = _Char690;
				chars[691] = _Char691;
				chars[692] = _Char692;
				chars[693] = _Char693;
				chars[694] = _Char694;
				chars[695] = _Char695;
				chars[696] = _Char696;
				chars[697] = _Char697;
				chars[698] = _Char698;
				chars[699] = _Char699;
				chars[700] = _Char700;
				chars[701] = _Char701;
				chars[702] = _Char702;
				chars[703] = _Char703;
				chars[704] = _Char704;
				chars[705] = _Char705;
				chars[706] = _Char706;
				chars[707] = _Char707;
				chars[708] = _Char708;
				chars[709] = _Char709;
				chars[710] = _Char710;
				chars[711] = _Char711;
				chars[712] = _Char712;
				chars[713] = _Char713;
				chars[714] = _Char714;
				chars[715] = _Char715;
				chars[716] = _Char716;
				chars[717] = _Char717;
				chars[718] = _Char718;
				chars[719] = _Char719;
				chars[720] = _Char720;
				chars[721] = _Char721;
				chars[722] = _Char722;
				chars[723] = _Char723;
				chars[724] = _Char724;
				chars[725] = _Char725;
				chars[726] = _Char726;
				chars[727] = _Char727;
				chars[728] = _Char728;
				chars[729] = _Char729;
				chars[730] = _Char730;
				chars[731] = _Char731;
				chars[732] = _Char732;
				chars[733] = _Char733;
				chars[734] = _Char734;
				chars[735] = _Char735;
				chars[736] = _Char736;
				chars[737] = _Char737;
				chars[738] = _Char738;
				chars[739] = _Char739;
				chars[740] = _Char740;
				chars[741] = _Char741;
				chars[742] = _Char742;
				chars[743] = _Char743;
				chars[744] = _Char744;
				chars[745] = _Char745;
				chars[746] = _Char746;
				chars[747] = _Char747;
				chars[748] = _Char748;
				chars[749] = _Char749;
				chars[750] = _Char750;
				chars[751] = _Char751;
				chars[752] = _Char752;
				chars[753] = _Char753;
				chars[754] = _Char754;
				chars[755] = _Char755;
				chars[756] = _Char756;
				chars[757] = _Char757;
				chars[758] = _Char758;
				chars[759] = _Char759;
				chars[760] = _Char760;
				chars[761] = _Char761;
				chars[762] = _Char762;
				chars[763] = _Char763;
				chars[764] = _Char764;
				chars[765] = _Char765;
				chars[766] = _Char766;
				chars[767] = _Char767;
				chars[768] = _Char768;
				chars[769] = _Char769;
				chars[770] = _Char770;
				chars[771] = _Char771;
				chars[772] = _Char772;
				chars[773] = _Char773;
				chars[774] = _Char774;
				chars[775] = _Char775;
				chars[776] = _Char776;
				chars[777] = _Char777;
				chars[778] = _Char778;
				chars[779] = _Char779;
				chars[780] = _Char780;
				chars[781] = _Char781;
				chars[782] = _Char782;
				chars[783] = _Char783;
				chars[784] = _Char784;
				chars[785] = _Char785;
				chars[786] = _Char786;
				chars[787] = _Char787;
				chars[788] = _Char788;
				chars[789] = _Char789;
				chars[790] = _Char790;
				chars[791] = _Char791;
				chars[792] = _Char792;
				chars[793] = _Char793;
				chars[794] = _Char794;
				chars[795] = _Char795;
				chars[796] = _Char796;
				chars[797] = _Char797;
				chars[798] = _Char798;
				chars[799] = _Char799;
				chars[800] = _Char800;
				chars[801] = _Char801;
				chars[802] = _Char802;
				chars[803] = _Char803;
				chars[804] = _Char804;
				chars[805] = _Char805;
				chars[806] = _Char806;
				chars[807] = _Char807;
				chars[808] = _Char808;
				chars[809] = _Char809;
				chars[810] = _Char810;
				chars[811] = _Char811;
				chars[812] = _Char812;
				chars[813] = _Char813;
				chars[814] = _Char814;
				chars[815] = _Char815;
				chars[816] = _Char816;
				chars[817] = _Char817;
				chars[818] = _Char818;
				chars[819] = _Char819;
				chars[820] = _Char820;
				chars[821] = _Char821;
				chars[822] = _Char822;
				chars[823] = _Char823;
				chars[824] = _Char824;
				chars[825] = _Char825;
				chars[826] = _Char826;
				chars[827] = _Char827;
				chars[828] = _Char828;
				chars[829] = _Char829;
				chars[830] = _Char830;
				chars[831] = _Char831;
				chars[832] = _Char832;
				chars[833] = _Char833;
				chars[834] = _Char834;
				chars[835] = _Char835;
				chars[836] = _Char836;
				chars[837] = _Char837;
				chars[838] = _Char838;
				chars[839] = _Char839;
				chars[840] = _Char840;
				chars[841] = _Char841;
				chars[842] = _Char842;
				chars[843] = _Char843;
				chars[844] = _Char844;
				chars[845] = _Char845;
				chars[846] = _Char846;
				chars[847] = _Char847;
				chars[848] = _Char848;
				chars[849] = _Char849;
				chars[850] = _Char850;
				chars[851] = _Char851;
				chars[852] = _Char852;
				chars[853] = _Char853;
				chars[854] = _Char854;
				chars[855] = _Char855;
				chars[856] = _Char856;
				chars[857] = _Char857;
				chars[858] = _Char858;
				chars[859] = _Char859;
				chars[860] = _Char860;
				chars[861] = _Char861;
				chars[862] = _Char862;
				chars[863] = _Char863;
				chars[864] = _Char864;
				chars[865] = _Char865;
				chars[866] = _Char866;
				chars[867] = _Char867;
				chars[868] = _Char868;
				chars[869] = _Char869;
				chars[870] = _Char870;
				chars[871] = _Char871;
				chars[872] = _Char872;
				chars[873] = _Char873;
				chars[874] = _Char874;
				chars[875] = _Char875;
				chars[876] = _Char876;
				chars[877] = _Char877;
				chars[878] = _Char878;
				chars[879] = _Char879;
				chars[880] = _Char880;
				chars[881] = _Char881;
				chars[882] = _Char882;
				chars[883] = _Char883;
				chars[884] = _Char884;
				chars[885] = _Char885;
				chars[886] = _Char886;
				chars[887] = _Char887;
				chars[888] = _Char888;
				chars[889] = _Char889;
				chars[890] = _Char890;
				chars[891] = _Char891;
				chars[892] = _Char892;
				chars[893] = _Char893;
				chars[894] = _Char894;
				chars[895] = _Char895;
				chars[896] = _Char896;
				chars[897] = _Char897;
				chars[898] = _Char898;
				chars[899] = _Char899;
				chars[900] = _Char900;
				chars[901] = _Char901;
				chars[902] = _Char902;
				chars[903] = _Char903;
				chars[904] = _Char904;
				chars[905] = _Char905;
				chars[906] = _Char906;
				chars[907] = _Char907;
				chars[908] = _Char908;
				chars[909] = _Char909;
				chars[910] = _Char910;
				chars[911] = _Char911;
				chars[912] = _Char912;
				chars[913] = _Char913;
				chars[914] = _Char914;
				chars[915] = _Char915;
				chars[916] = _Char916;
				chars[917] = _Char917;
				chars[918] = _Char918;
				chars[919] = _Char919;
				chars[920] = _Char920;
				chars[921] = _Char921;
				chars[922] = _Char922;
				chars[923] = _Char923;
				chars[924] = _Char924;
				chars[925] = _Char925;
				chars[926] = _Char926;
				chars[927] = _Char927;
				chars[928] = _Char928;
				chars[929] = _Char929;
				chars[930] = _Char930;
				chars[931] = _Char931;
				chars[932] = _Char932;
				chars[933] = _Char933;
				chars[934] = _Char934;
				chars[935] = _Char935;
				chars[936] = _Char936;
				chars[937] = _Char937;
				chars[938] = _Char938;
				chars[939] = _Char939;
				chars[940] = _Char940;
				chars[941] = _Char941;
				chars[942] = _Char942;
				chars[943] = _Char943;
				chars[944] = _Char944;
				chars[945] = _Char945;
				chars[946] = _Char946;
				chars[947] = _Char947;
				chars[948] = _Char948;
				chars[949] = _Char949;
				chars[950] = _Char950;
				chars[951] = _Char951;
				chars[952] = _Char952;
				chars[953] = _Char953;
				chars[954] = _Char954;
				chars[955] = _Char955;
				chars[956] = _Char956;
				chars[957] = _Char957;
				chars[958] = _Char958;
				chars[959] = _Char959;
				chars[960] = _Char960;
				chars[961] = _Char961;
				chars[962] = _Char962;
				chars[963] = _Char963;
				chars[964] = _Char964;
				chars[965] = _Char965;
				chars[966] = _Char966;
				chars[967] = _Char967;
				chars[968] = _Char968;
				chars[969] = _Char969;
				chars[970] = _Char970;
				chars[971] = _Char971;
				chars[972] = _Char972;
				chars[973] = _Char973;
				chars[974] = _Char974;
				chars[975] = _Char975;
				chars[976] = _Char976;
				chars[977] = _Char977;
				chars[978] = _Char978;
				chars[979] = _Char979;
				chars[980] = _Char980;
				chars[981] = _Char981;
				chars[982] = _Char982;
				chars[983] = _Char983;
				chars[984] = _Char984;
				chars[985] = _Char985;
				chars[986] = _Char986;
				chars[987] = _Char987;
				chars[988] = _Char988;
				chars[989] = _Char989;
				chars[990] = _Char990;
				chars[991] = _Char991;
				chars[992] = _Char992;
				chars[993] = _Char993;
				chars[994] = _Char994;
				chars[995] = _Char995;
				chars[996] = _Char996;
				chars[997] = _Char997;
				chars[998] = _Char998;
				chars[999] = _Char999;
				chars[1000] = _Char1000;
				chars[1001] = _Char1001;
				chars[1002] = _Char1002;
				chars[1003] = _Char1003;
				chars[1004] = _Char1004;
				chars[1005] = _Char1005;
				chars[1006] = _Char1006;
				chars[1007] = _Char1007;
				chars[1008] = _Char1008;
				chars[1009] = _Char1009;
				chars[1010] = _Char1010;
				chars[1011] = _Char1011;
				chars[1012] = _Char1012;
				chars[1013] = _Char1013;
				chars[1014] = _Char1014;
				chars[1015] = _Char1015;
				chars[1016] = _Char1016;
				chars[1017] = _Char1017;
				chars[1018] = _Char1018;
				chars[1019] = _Char1019;
				chars[1020] = _Char1020;
				chars[1021] = _Char1021;
				chars[1022] = _Char1022;
				chars[1023] = _Char1023;


				float2 uvSize = float2(_TileX, _TileY);
				float2 charSize = float2(_RowLength, _RowColumns);
				float2 uvTile = 1.0 / uvSize;
				float2 charTile = 1.0 / charSize;

				float charLimit = uvSize.x * uvSize.y;
				float charPosition = floor(i.uv.x * charSize.x) + floor((1.0 - i.uv.y) * charSize.y) * charSize.x;
				//float charCurrent = round(chars[clamp(charPosition, 0, 127)]);
				float charCurrent = round(chars[clamp(charPosition, 0, 1023)]);
				charCurrent = min(charCurrent, charLimit);
				//charCurrent=charCurrent+chars[clamp(charPosition, 0, 127)+64]*128;// use two values to indicate one charactter
				charCurrent=charCurrent+chars[clamp(charPosition, 0, 1023)+512]*128;// use two values to indicate one charactter
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
