#include "..\..\..\..\common.sqf"

params ["_menu"];

[_menu displayCtrl IDC_SETTINGS_MENU_BUTTON_CLIENT] spawn {
	params["_ctrl_first_tab"];
	[_ctrl_first_tab, 1] call client_fnc_settings_menu_dialog_tab_onClick;
};


// [_menu] spawn {
// 	ctrlShow [6969, false];

// 	ctrlShow [IDC_SETTINGS_MENU_BUTTON_PING, false];
// 	ctrlShow [IDC_SETTINGS_MENU_BUTTON_CLIENT, false];

// 	ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TITLE, false];
// 	ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TEXTBOX, false];
// 	ctrlShow [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_SLIDER, false];

// 	ctrlShow [IDC_SETTINGS_MENU_PING_ENABLED_TITLE, false];
// 	ctrlShow [IDC_SETTINGS_MENU_PING_ENABLED_CHECKBOX, false];
// 	ctrlShow [IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_TITLE, false];
// 	ctrlShow [IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_CHECKBOX, false];
// }