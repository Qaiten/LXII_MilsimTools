/* ----------------------------------------------------------------------------
Function: LXII_legioArsenal_fnc_getDeadPlayers

Description:
	Create a list of dead players.

Parameters:
	None

Returns:
	Array of players who are not alive. Sub-array index: <ARRAY>
	0: West
	1: East
	2: Resistance
	3: Civilian

Examples:
	[] call LXII_legioArsenal_fnc_getDeadPlayers;

Author:
	Arend
License GPL-2.0
---------------------------------------------------------------------------- */
private _deadPlayers = [[],[],[],[]];
private _sideReference = [WEST, EAST, RESISTANCE, CIVILIAN];
private _side = 0;
{
	if (!alive _x) then {
		_side = _sideReference find (side group _x);
		if (_side > -1) then {
			(_deadPlayers select _side) pushBack _x;
		};
	};
} foreach ([] call CBA_fnc_players);

[format["Got dead players %1", _deadPlayers], "legioArsenal\functions\common\fn_getDeadPlayers.sqf"] call LXII_legioArsenal_fnc_log;
_deadPlayers;
