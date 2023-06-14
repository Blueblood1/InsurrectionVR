#include "..\..\..\common.sqf"

if (isNull findDisplay IDD_ROLE_MENU) then {
	createDialog "RoleMenu";
} else {
	closeDialog IDC_OK;
};
