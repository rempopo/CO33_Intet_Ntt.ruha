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
#define BINOCULAR_ITEM		"ACE_Vector"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

//Norw
#define norg_u ["CUP_U_CRYE_ATACSFG_Full","CUP_U_CRYE_ATACSFG_Roll"]
#define norg_v ["CUP_V_B_Eagle_SPC_Rifleman","CUP_V_B_Eagle_SPC_Patrol","CUP_V_B_Eagle_SPC_Scout"]
#define norg_h ["rhsusf_opscore_rg_cover","rhsusf_opscore_rg_cover_pelt","rhsusf_opscore_fg","rhsusf_opscore_fg_pelt","rhsusf_opscore_mar_fg_pelt"]
#define norg_g ["rhsusf_oakley_goggles_clr","rhs_googles_clear","CUP_G_ESS_CBR_Dark","CUP_G_Oakleys_Clr","CUP_G_Oakleys_Drk","CUP_G_Oakleys_Embr",""]

#define norg_w_h ["","rhsusf_acc_grip3"]

kit_norg_sl = [
	["<EQUIPEMENT >>  ",norg_u,"CUP_V_B_Eagle_SPC_RTO","tf_rt1523g_rhs",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_su230a",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_norg_ftl = [
	["<EQUIPEMENT >>  ",norg_u,"CUP_V_B_Eagle_SPC_TL","",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_su230a",norg_w_h]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_norg_ar = [
	["<EQUIPEMENT >>  ",norg_u,"CUP_V_B_Eagle_SPC_MG","B_Kitbag_sgg",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip_L_para","rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",["","","rhsusf_acc_su230a","rhsusf_acc_saw_lw_bipod"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_norg_gr = [
	["<EQUIPEMENT >>  ",norg_u,"CUP_V_B_Eagle_SPC_GL","",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_m320","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","CUP_optic_CompM2_low",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",7],["1Rnd_HE_Grenade_shell",8],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_norg_r = [
	["<EQUIPEMENT >>  ",norg_u,norg_v,"B_Kitbag_sgg",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","CUP_optic_CompM2_low",norg_w_h]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",2]]]
];

kit_norg_ftl_mg3 = [
	["<EQUIPEMENT >>  ",norg_u,norg_v,"B_Kitbag_sgg",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","rhsusf_acc_su230",norg_w_h]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2]]]
];

kit_norg_mg3 = [
	["<EQUIPEMENT >>  ",norg_u,"CUP_V_B_Eagle_SPC_MG","B_Kitbag_sgg",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","CUP_lmg_MG3_rail","CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",["","","CUP_optic_ElcanM145_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_norg_mg3A = [
	["<EQUIPEMENT >>  ",norg_u,norg_v,"B_Kitbag_sgg",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","CUP_optic_CompM2_low",norg_w_h]],
	["<LAUNCHER WEAPON >>  ","dzn_MG_Tripod_Universal_Carry","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2]]]
];

kit_norg_ftl_maws = [
	["<EQUIPEMENT >>  ",norg_u,norg_v,"B_Carryall_oli",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","rhsusf_acc_su230",norg_w_h]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_maaws_HEAT",2],["rhs_mag_maaws_HE",2]]]
];

kit_norg_maws = [
	["<EQUIPEMENT >>  ",norg_u,norg_v,"B_Carryall_oli",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","CUP_optic_CompM2_low",norg_w_h]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_maaws","rhs_mag_maaws_HEAT",["","","rhs_optic_maaws",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",1],["rhs_mag_maaws_HE",2]]]
];

kit_norg_mawsA = [
	["<EQUIPEMENT >>  ",norg_u,norg_v,"B_Carryall_oli",norg_h,norg_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_grip3","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","CUP_optic_CompM2_low",norg_w_h]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_maaws_HEAT",2],["rhs_mag_maaws_HE",2]]]
];

kit_norg_crew = [
	["<EQUIPEMENT >>  ","CUP_U_CRYE_ATACSFG_Full","CUP_V_B_Eagle_SPC_Crew","","rhsusf_cvc_green_alt_helmet","rhsusf_oakley_goggles_clr"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",2],["SmokeShell",2],["SmokeShellGreen",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

cargo_kit_norg_cargo = [
	[["rhs_weap_m72a7",2]],
	[["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],["HandGrenade",6],["rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",10],["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",10],["rhs_mag_maaws_HEAT",5],["rhs_mag_maaws_HE",5],["1Rnd_HE_Grenade_shell",20],["CUP_PipeBomb_M",2]],
	[["ACE_Clacker",2]],
	[]
];

//RUS

#define rus_v ["rhs_6b23_digi_6sh92","rhs_6b23_6sh116"]
#define rus_h ["rhs_6b47","rhs_6b47_ess","rhs_6b47_ess_bala","rhs_6b47_bala"]

#define rus_w_mg ["rhs_weap_pkm","rhs_weap_pkp"]
#define rus_a_mg ["rhs_100Rnd_762x54mmR","rhs_100Rnd_762x54mmR"]

#define rusR_w_o ["rhs_acc_1p63",""]


kit_rus_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr",rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","",rusR_w_o,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_ak12r = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr",rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_random_rusr = [
    "kit_rus_ak12r","kit_rus_r"
];

kit_rus_ak12gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr","rhs_6b23_6sh116_vog","",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr_gp25","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_VOG25",6],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr","rhs_6b23_6sh116_vog","",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","",rusR_w_o,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_VOG25",6],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_random_rusgr = [
    "kit_rus_ak12gr","kit_rus_gr"
];

kit_rus_mg = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr","rhs_6b23_6sh116","rhs_assault_umbts",rus_h,""],
	["<PRIMARY WEAPON >>  ",rus_w_mg,rus_a_mg,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["16Rnd_9x21_yellow_Mag",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_rus_at = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr","rhs_6b23_digi_6sh92","rhs_rpg_empty",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","",rusR_w_o,""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]]]
];

kit_rus_rpg26 = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr",rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","",rusR_w_o,""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_crew = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr","rhs_6b23_digi","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["16Rnd_9x21_yellow_Mag",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_mm = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr",rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m21_svd",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pya","rhs_mag_9x19_17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["PRIMARY MAG",6],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];