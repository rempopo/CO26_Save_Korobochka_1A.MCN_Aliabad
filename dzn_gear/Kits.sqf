// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define VDV_HEADGEAR ["CUP_H_SLA_Helmet_OD_worn","rhs_fieldcap_khk","panama_afg2"]
#define VDV_UNI ["CUP_U_O_RUS_M88_MSV_rolled_up","CUP_U_O_RUS_M88_MSV","VDV_M69_FIELD"]
kit_vdv_pl = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_officer_khaki","RD_54_69_345th_R148","panama_afg2",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["rhs_mag_rgd5",3],["rhs_mag_nspd",2],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_vdv_sl = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_officer_khaki","RD_54_69_345th_R148",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["rhs_mag_rgd5",3],["rhs_mag_nspd",2],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_vdv_at = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","CUP_B_RPGPack_Khaki",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","rhs_rpg7_PG7V_mag",["","","CUP_optic_PGO7V",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["CUP_PG7V_M",3]]]
];
kit_vdv_aat = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","CUP_B_RPGPack_Khaki",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["CUP_PG7V_M",3]]]
];
kit_vdv_mg = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","RD_54_6B3_345th",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2]]]
];
kit_vdv_ss = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","RD_54_6B3_345th",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_GL_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",6],["CUP_1Rnd_HE_GP25_M",6]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",15],["PRIMARY MAG",2]]]
];
kit_vdv_gr = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","RD_54_6B3_345th",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_GL_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",6],["CUP_1Rnd_HE_GP25_M",6]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",15],["PRIMARY MAG",2]]]
];
kit_vdv_r = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","RD_54_6B3_345th",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2]]]
];
kit_vdv_mm = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_sniper_khaki","RD_54_6B3_345th",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",11]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2],["PRIMARY MAG",4]]]
];
kit_vdv_ar = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","RD_54_6B3_345th",VDV_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5]]]
];
kit_vdv_crew = [
	["<EQUIPEMENT >>  ",VDV_UNI,"rhs_6b5_rifleman_khaki","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
cargo_kit_vdv_ammo = [
	[],
	[["CUP_30Rnd_545x39_AK_M",30],["CUP_PG7V_M",5],["rhs_mag_rgd5",20],["CUP_10Rnd_762x54_SVD_M",20],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",15],["CUP_1Rnd_HE_GP25_M",40],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",15],["rhs_mag_nspd",10],["rhs_mag_rdg2_black",10],["CUP_8Rnd_9x18_Makarov_M",10]],
	[["ACE_fieldDressing",30],["ACE_packingBandage",20],["ACE_elasticBandage",15],["ACE_tourniquet",8]],
	[]
];
//Afghan modjaheds
#define INS_WEP ["CUP_arifle_G3A3_ris","hlc_rifle_FAL5000","CUP_srifle_LeeEnfield","CUP_arifle_M16A1","CUP_arifle_TYPE_56_2_Early","CUP_SKS"]
#define INS_MAG ["CUP_20Rnd_762x51_G3","hlc_20Rnd_762x51_B_fal","CUP_10x_303_M","CUP_20Rnd_556x45_Stanag","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_10Rnd_762x39_SKS_M"]
#define INS_MG_WEP ["CUP_lmg_PKM","CUP_lmg_UK59","CUP_arifle_RPK74"]
#define INS_MG_MAG ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M","CUP_50Rnd_UK59_762x54R_Tracer","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"]
#define INS_UNI ["CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_08","CUP_O_TKI_Khet_Partug_06"]
#define INS_VEST ["CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_06","CUP_V_I_Carrier_Belt"]
#define INS_HEADGEAR ["CUP_H_TKI_Pakol_2_04","CUP_H_TKI_Pakol_2_01","CUP_H_TKI_SkullCap_03","CUP_H_TKI_Lungee_Open_04"]
kit_ins_random = [
	"kit_ins_fighter"
	,"kit_ins_mg"
	,"kit_ins_fighter"
	,"kit_ins_ar"
	,"kit_ins_at"
	,"kit_ins_lat"
	,"kit_ins_fighter"
	,"kit_ins_lat"
	,"kit_ins_at"
	,"kit_ins_gr"
]; 
kit_ins_fighter = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST ,"",INS_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_mg = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ",INS_MG_WEP,INS_MG_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_ar = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_at = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"rhs_sidor",INS_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];
kit_ins_gr = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",3],["CUP_1Rnd_HE_GP25_M",9]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_lat = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];