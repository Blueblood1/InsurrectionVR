#include "..\..\..\..\common.sqf"

{
	DEBUG("onload")
	DEBUG(str _forEachIndex)
	private _role_list_var_name = format["GlobalRole_List_%1", _forEachIndex];
	waitUntil { !isNil(_role_list_var_name) };
	_role_list_var_name addPublicVariableEventHandler {
		DEBUG("FIRED")
		private _var_name = _this select 0;
		private _role_index = parseNumber (_var_name regexFind ["[0-9]+"] apply { (_x select 0) select 0; } joinString ""); 
		private _role_slot_idc = IDC_ROLE_SLOTS select _role_index;
		private _role_menu = findDisplay IDD_ROLE_MENU;
		if !(isNull _role_menu) then {
			[_role_menu displayCtrl _role_slot_idc, _role_index] call client_fnc_role_menu_dialog_role_onLoad;
		};
	};
} forEach ROLES;
