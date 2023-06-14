#include "..\..\..\..\common.sqf"

params ["_control", "_tab_index"];

private _menu = ctrlParent _control;

private _tab_client = _menu displayCtrl IDC_SETTINGS_MENU_BUTTON_CLIENT;
private _tab_ping = _menu displayCtrl IDC_SETTINGS_MENU_BUTTON_PING;

switch (_tab_index) do
{
	case 1: { 
		_control ctrlSetStructuredText parseText "<t underline='1'>CLIENT</t>";
		_tab_ping ctrlSetStructuredText parseText "PING";
		ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TITLE, true];
		ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TEXTBOX, true];
		ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_SLIDER, true];
		
		ctrlShow [IDC_SETTINGS_MENU_PING_ENABLED_TITLE, false];
		ctrlShow [IDC_SETTINGS_MENU_PING_ENABLED_CHECKBOX, false];
		ctrlShow [IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_TITLE, false];
		ctrlShow [IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_CHECKBOX, false];
	};
	case 2: {
		_tab_client ctrlSetStructuredText parseText "CLIENT";
		_control ctrlSetStructuredText parseText "<t underline='1'>PING</t>";
		ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TITLE, false];
		ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TEXTBOX, false];
		ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_SLIDER, false];

		ctrlShow [IDC_SETTINGS_MENU_PING_ENABLED_TITLE, true];
		ctrlShow [IDC_SETTINGS_MENU_PING_ENABLED_CHECKBOX, true];
		ctrlShow [IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_TITLE, true];
		ctrlShow [IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_CHECKBOX, true];
	};
};