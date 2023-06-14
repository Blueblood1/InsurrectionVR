#include "..\..\..\..\common.sqf"

params ["_menu"];

{
	private _ctrl_role_slot = _menu displayCtrl _x;
	[_ctrl_role_slot, _forEachIndex] spawn client_fnc_role_dialog_role_onLoad;
} forEach IDC_ROLE_SLOTS;
