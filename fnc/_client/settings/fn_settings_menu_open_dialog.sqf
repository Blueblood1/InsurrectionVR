#include "..\..\..\common.sqf"

if (isNull findDisplay IDD_SETTINGS_MENU) then {
	createDialog "SettingsMenu";
} else {
	closeDialog IDC_OK;
};
