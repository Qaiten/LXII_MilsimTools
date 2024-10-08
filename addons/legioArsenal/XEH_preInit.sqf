/*
License GPL-2.0
*/
private _LXII_legioArsenal_settings = [
    [
		"LXII_legioArsenal_debug",
		"CHECKBOX",
		["Enable Debug", "Tick enable Legio XII debug messages to appear in RPT and systemChat"],
		["Legio XII Common", "Development"],
		false
	],
	[
		"LXII_legioArsenal_arsenal_objects",
		"EDITBOX",
		["Arsenal Objects", "Classnames, separated by commas and without double quotations, of objects that are spawnable by ""Add Filtered Arsenal"" module"],
		["Legio XII Zeus", "Modules"],
		"C_supplyCrate_F,B_Slingload_01_Ammo_F"
	],
	[
		"LXII_legioArsenal_respawn_timer",
		"SLIDER",
		["Respawn Timer (seconds)", "Number of seconds player waves need to wait before respawn (0 -> 600 (10 minutes))"],
		["Legio XII Zeus", "Respawn"],
		[1, 600, 5, 0],
		1,
		{
			setPlayerRespawnTime _this;
		}
	],
	[
		"LXII_legioArsenal_map_volume",
		"SLIDER",
		["Map Volume", "Volume to set when in a vehicle and looking at the map (so that you don't have to listen to loud as fuck helicopter rotors)"],
		"Legio XII Common",
		[0, 1, 0.20, 2]
	],
	[
		"LXII_legioArsenal_arsenal_whitelist_mission",
		"EDITBOX",
		["Mission", "Mission specific equipment whitelist"],
		["Legio XII Arsenal", "Arsenal Whitelists"],
		"[]",
		1,
		{
			// One day this will re-init all arsenals that have this filter set
		},
		true
	],
	[
        "LXII_legioArsenal_arsenal_whitelist_Kasrkin",
        "EDITBOX",
        ["Kasrkin", "Default equipment whitelist"],
        ["Legio XII Arsenal", "Arsenal Whitelists"],
        "['TIOW_CadianHellgun','IC_Launcher_AT_grey','TIOW_Bolt_Pistol','TIOW_Bolt_Pistol2','ic_cad_laspistol','ic_hellgun_optic','ic_las_optic_2x','TIOW_2x4xScope_1','IC_bayonet_01','TIOW_CadianHellgun_Mag','ic_hellgun_mag','ic_PlasmaGunRed','TIOW_IG_Flamer','ic_cad_melta','IC_Krak_rocket_mag','IC_krakk_Missile_mag','ic_melta_canister','TIOW_IGBoltPistol_Mag','ic_laspistol_powerpack','ic_plasma_canisterRed','TIOW_Krieg_Flamer_mag','IC_cad_kasr_helmet_beige','IC_cad_kasr_helmet_green','IC_CAD_KasrArmor_beige','IC_CAD_KasrArmor_green','IC_CAD_U_776_B','IC_CAD_kasr_pack_beige','IC_CAD_kasr_pack_green','IC_CAD_kasr_pack_green_02','ic_cad_Goggles','ic_cad_magnoculars','WBK_Narth_3','ItemMap','ItemCompass','TFAR_anprc152','TFAR_rf7800str','ACE_Altimeter','ItemGPS','DSA_Detector','IC_CAD_FRAG_mag','IC_CAD_KRAK_mag','IC_CAD_KRAKV2_mag','IC_CAD_SMOKE_mag','Chemlight_blue','Chemlight_green','IC_CAD_CHARGE_placeable_mag','ACE_adenosine','ACE_RangeTable_82mm','ACE_artilleryTable','DSA_Antidote','ACE_fieldDressing','ACE_elasticBandage','ACE_packingBandage','ACE_quikclot','ACE_bloodIV','ACE_bloodIV_250','ACE_bloodIV_500','ACE_bodyBag','ACE_CableTie','ACE_DefusalKit','ACE_EarPlugs','ACE_EntrenchingTool','ACE_epinephrine','FirstAidKit','ACE_Flashlight_MX991','ACE_IR_Strobe_Item','ACE_M26_Clacker','Medikit','MineDetector','ACE_morphine','ACE_plasmaIV','ACE_plasmaIV_250','ACE_plasmaIV_500','ACE_RangeCard','ACE_salineIV','ACE_salineIV_250','ACE_salineIV_500','ACE_splint','ACE_surgicalKit','ToolKit','ACE_tourniquet','ACE_UAVBattery','ACE_wirecutter','ACE_SpraypaintBlue','ACE_SpraypaintGreen','ACE_SpraypaintRed','ACE_SpareBarrel','IC_CAD_U_836_B','IC_CAD_kasr_pack_beige_02','IC_Frag_rocket_mag','IC_frag_Missile_mag','dm_KantraelMaskGreen','IC_cad_rebreather_beige','IC_cad_rebreather_green']",
        1,
        {
            // One day this will re-init all arsenals that have this filter set
        },
        true
    ]
];

{_x call CBA_Settings_fnc_init;} forEach _LXII_legioArsenal_settings;
CHVD_allowNoGrass = false;
