/* ----------------------------------------------------------------------------
Config: Unit Trainer Tools

Description:
	Registers ACE Interactions for Unit Trainers to use as tools of their trade.

Author:
	Arend
License GPL-2.0
---------------------------------------------------------------------------- */
class CfgVehicles {
	class Man;
	class CAManBase: Man {
		class ACE_Actions {
			class LXII_legioArsenal_FullHeal {
				displayName = "Heal player";
				condition = "[_player] call LXII_legioArsenal_fnc_isCurator";
				statement = "[_player, _target] call ace_medical_treatment_fnc_fullHeal;hint format[""%1 healed!"", name _target];";
				icon = "x\LXII\legioArsenal\red-cross.paa";
				position = "(_target selectionPosition [""spine3"", ""Memory""]) vectorAdd [0,0.1,0]";
				distance = 4;
				exceptions[] = {"isNotInside", "isNotSitting"};
			};
		};
	};
};

