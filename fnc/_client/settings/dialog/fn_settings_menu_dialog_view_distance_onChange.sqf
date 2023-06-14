#include "..\..\..\..\common.sqf"

params ["_control", "_new_value"];

ctrlSetText [IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TEXTBOX, str _new_value];

GlobalSettingClientViewDistance = _new_value;