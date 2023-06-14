#include "..\..\..\..\common.sqf"

params ["_ctrl_view_distance_textbox", "_key"];

private _text = ctrlText _ctrl_view_distance_textbox;
private _num = parseNumber (_text regexFind ["[0-9]+"] apply { (_x select 0) select 0; } joinString "");

private _ctrl_view_distance_slider = (findDisplay IDD_SETTINGS_MENU) displayCtrl IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_SLIDER;

if ((_num >= SETTINGS_VISIBILITY_SLIDER_RANGE_LOWER_BOUND) && (_num <= SETTINGS_VISIBILITY_SLIDER_RANGE_UPPER_BOUND)) then {
	_ctrl_view_distance_textbox ctrlSetText str _num;
	_ctrl_view_distance_slider sliderSetPosition _num;
} else {
	if (_num > SETTINGS_VISIBILITY_SLIDER_RANGE_LOWER_BOUND) then {
		_ctrl_view_distance_textbox ctrlSetText str SETTINGS_VISIBILITY_SLIDER_RANGE_UPPER_BOUND;
		_ctrl_view_distance_slider sliderSetPosition SETTINGS_VISIBILITY_SLIDER_RANGE_UPPER_BOUND;
	};
	if (_num < SETTINGS_VISIBILITY_SLIDER_RANGE_UPPER_BOUND) then {
		_ctrl_view_distance_textbox ctrlSetText str SETTINGS_VISIBILITY_SLIDER_RANGE_LOWER_BOUND;
		_ctrl_view_distance_slider sliderSetPosition SETTINGS_VISIBILITY_SLIDER_RANGE_LOWER_BOUND;
	};
}