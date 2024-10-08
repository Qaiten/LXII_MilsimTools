params ["_vehicle", "_player", "_parameters"];

private _actions = [];

private _animations = [_vehicle] call LXII_legioArsenal_fnc_getDeployAnimations;

if (_animations isEqualTo []) exitWith {false;};

{
	_x params ["_animationConfig", "_animationClass", "_animationName"];

	_actions pushBack [
		[
			format["%1", _animationClass],
			_animationName,
			"\A3\ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa",
			{
				[
					5,
					_this,
					{
						(_this select 0) params ["_target", "_player", "_actionParams"];
						_actionParams params ["_vehicle", "_animationName", "_animationClass"];

						private _newPhase = 0;
						if ((_vehicle animationSourcePhase _animationClass) < 0.5) then {
							_newPhase = 1;
						};

						// _vehicle setVariable ["vs_core_%1_isActive", true];
						[format["Animation data: %1 --- Variables: %2", _this, _animationClass], "legioArsenal\functions\common\fn_addDeployActions.sqf"] call LXII_legioArsenal_fnc_log;
						_vehicle animateSource [_animationClass, _newPhase];
					},
					{},
					_this select 2 select 1 // _animationName
				] call ace_common_fnc_progressBar;
			},
			{true},
			{},
			[_vehicle, _animationName, _animationClass],
			{[0,0,0]},
			4,
			[false,false,false,false,false],
			{
				params ["_target", "_player", "_args", "_actionData"];
				_args params ["_vehicle", "_animationName", "_animationClass"];

				private _iconFile = "\A3\ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
				if ((_vehicle animationSourcePhase _animationClass) < 0.5) then {
					_iconFile = "\A3\ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
				};

				_actionData set [2, _iconFile];
			}
		] call ace_interact_menu_fnc_createAction,
		[],
		_player
	];
} forEach _animations;

_actions;