/* ----------------------------------------------------------------------------
Function: LXII_legioArsenal_fnc_listDeadPlayers

Description:
	Format a message listing dead players. Can be filtered by side.

Parameters:
	0: _side - Filter list by side <SIDE|STRING>

Returns:
	Formatted message listing dead players <STRING>

Examples:
	[east] call LXII_legioArsenal_fnc_listDeadPlayers;

Author:
	Arend
License GPL-2.0
---------------------------------------------------------------------------- */
params [["_side", "", ["", west]]];

private _deadPlayers = [] call LXII_legioArsenal_fnc_getDeadPlayers;

if (_side isEqualTo "") then {
	_deadPlayers = _deadPlayers call LXII_legioArsenal_fnc_arrayFlatten;
} else {
	private _sideReference = [WEST, EAST, RESISTANCE, CIVILIAN];

	_deadPlayers = _deadPlayers select (_sideReference find _side);
};

if (_deadPlayers isEqualTo []) exitWith {
	hint "There aren't any dead players.";
};

[format["Listing dead players: %1", _deadPlayers], "legioArsenal\functions\common\fn_listDeadPlayers.sqf"] call LXII_legioArsenal_fnc_log;
private _message = "Dead players:\n";
private _deathDuration = 0;
private _diedAt = 0;
{
	_diedAt = _x getVariable ["LXII_legioArsenal_diedAt", serverTime];
	_deathDuration = [(serverTime - _diedAt), "M:SS"] call CBA_fnc_formatElapsedTime;
	[format["Dead: %1 in %2 at %3 out of %4 (%5)", name _x, side group _x, _diedAt, serverTime, _deathDuration], "legioArsenal\functions\common\fn_listDeadPlayers.sqf"] call LXII_legioArsenal_fnc_log;
	_message = "[" + str (side group _x) + "] " + _message + name _x + " (" + _deathDuration + "mins)\n";
} foreach _deadPlayers;

hint _message;
