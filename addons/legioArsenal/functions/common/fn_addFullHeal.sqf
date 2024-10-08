/* ----------------------------------------------------------------------------
Function: LXII_legioArsenal_fnc_addFullHeal

Description:
	Adds a custom ACE "Full Heal" interaction to the object in question.

	WARNING: This function is NOT Global!

Parameters:
	0: _objects - single or multiple objects to apply the fullheal to
		<OBJECT|ARRAY>

Returns:
	Nothing

Examples:
	[] call LXII_legioArsenal_fnc_addFullHeal;

Author:
	Arend

License GPL-2.0
---------------------------------------------------------------------------- */
params [["_objects", objNull, [objNull, []]]];

if (_objects isEqualTo objNull || _objects isEqualTo []) exitWith {
	[format["Failed to apply Full Heal interaction: No object given! %1", _objects], "legioArsenal\functions\common\fn_FullHeal.sqf"] call LXII_legioArsenal_fnc_log;
};

if (typeName _objects isEqualTo "OBJECT") then {
	_objects = [_objects];
};

private _action = [];

{
	_object = _x;

	if ({(_x select 0) select 0 isEqualTo "LXII_legioArsenal_fullHeal"} count (_object getVariable ["ace_interact_menu_actions", []]) == 0) then {
		_action = [
			"LXII_legioArsenal_fullHeal",
			"Full Heal",
			"\x\LXII\legioArsenal\img\red-cross.paa",
			{
				[player, player] call ace_medical_treatment_fnc_fullHeal;
				hint "Healed!";
			},
			{true}
		] call ace_interact_menu_fnc_createAction;

		if !(_action isEqualTo []) then {
			[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
			[format["Added full heal interaction to %1. Action: %2", _object, _action], "legioArsenal\functions\common\fn_addFullHeal.sqf"] call LXII_legioArsenal_fnc_log;
		};
	};
} foreach _objects;
