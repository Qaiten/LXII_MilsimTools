/* ----------------------------------------------------------------------------
Function: LXII_legioArsenal_fnc_openTimerUI

Description:
	Opens the Timer UI to set respawn timer.
	Original: https://github.com/acemod/ACE3/blob/711e9073a8edbac5c7643fe7df897ab20724010d/addons/explosives/functions/fnc_openTimerUI.sqf

Parameters:
	0: _default - Position the slider should be at when the UI is opened, if
				  not default. <NUMBER>

Returns:
	True <BOOL>

Examples:
	[250] call LXII_legioArsenal_fnc_openTimerUI;

Author:
	mharis001
	Arend
License GPL-2.0
---------------------------------------------------------------------------- */
/*
Converted #defines:
IDC_TIMER_SLIDER 8505
IDC_TIMER_CONFIRM 8506

IDC_TIMER_DIGIT_1 8501
IDC_TIMER_DIGIT_2 8502
IDC_TIMER_DIGIT_3 8503
IDC_TIMER_DIGIT_4 8504

TIMER_DIGIT_IDCs [IDC_TIMER_DIGIT_1, IDC_TIMER_DIGIT_2, IDC_TIMER_DIGIT_3, IDC_TIMER_DIGIT_4]
 */
private _defaultConfirmAction = {
	params ["_button"];

	private _slider = ctrlParent _button displayCtrl 8505;
	private _time = floor sliderPosition _slider;

	[_time] call LXII_legioArsenal_fnc_setRespawnTimer;
	closeDialog 0;
};

params [
	["_default", 30, [0]],
	["_confirmAction", _defaultConfirmAction, [{}]],
	["_min", 0, [0]],
	["_max", 600, [0]]
];

private _min = 0;
private _max = 600;

createDialog "ace_explosives_timerUI";
private _display = uiNamespace getVariable ["ace_explosives_timerDisplay", displayNull];

// Update slider speed to 1s
(_display displayCtrl 8505) sliderSetSpeed [1, 1];
(_display displayCtrl 8505) sliderSetRange [_min, _max];
(_display displayCtrl 8505) sliderSetPosition (_default max _min min _max);


// Add confirm button action
(_display displayCtrl 8506) ctrlAddEventHandler ["ButtonClick", _confirmAction];

// Add EH to allow for changing values by scrolling
_display displayAddEventHandler ["MouseZChanged", {
	params ["_display", "_scroll"];

	private _change = round _scroll;
	if (cba_events_control) then {_change = _change * 10};

	private _slider = _display displayCtrl 8505;
	private _value = (sliderPosition _slider + _change) max _min min _max;
	_slider sliderSetPosition _value;
}];

// Add PFH to update the digit display (delay of 0.1s)
// Done like this to avoid flicker that would happen when rapidly changing values through EH method
[{
	params ["_display", "_pfhID"];

	if (isNull _display) exitWith {
		_pfhID call CBA_fnc_removePerFrameHandler;
	};

	private _value = sliderPosition (_display displayCtrl 8505);
	private _minutes = floor (_value / 60);
	private _seconds = floor (_value % 60);
	private _digitArray = [floor (_minutes / 10), _minutes mod 10, floor (_seconds / 10), _seconds mod 10];
	{
		(_display displayCtrl _x) ctrlSetText format ["\z\ace\addons\explosives\UI\seven_segment_%1.paa", _digitArray select _forEachIndex];
	} forEach [8501, 8502, 8503, 8504];
}, 0.1, _display] call CBA_fnc_addPerFrameHandler;

true;
