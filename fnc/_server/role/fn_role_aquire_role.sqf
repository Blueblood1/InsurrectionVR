#include "..\..\..\common.sqf"

if (remoteExecutedOwner isEqualTo 0) exitWith {};

params ["_role_index"];

private _role = ROLES select _role_index;
private _role_limit = _role select 1;
private _role_list_var_name = format["GlobalRole_List_%1", _role_index];
private _role_list_current = missionNamespace getVariable _role_list_var_name;

private _player_machine_id = remoteExecutedOwner;

if ((count _role_list_current) < _role_limit) then {
	private _role_player_var_name = format["GlobalRole_Player_%1", _player_machine_id];
	private _role_current = missionNamespace getVariable _role_player_var_name;

	missionNamespace setVariable [_role_player_var_name, _role_index];
	publicVariable _role_player_var_name;

	_role_list_current append [_player_machine_id];
	missionNamespace setVariable [_role_list_var_name, _role_list_current];
	publicVariable _role_list_var_name;

	if !(isNil "_role_current") then {
		private _role_list_old_var_name = format["GlobalRole_List_%1", _role_current];
		private _role_list_old_current = missionNamespace getVariable _role_list_old_var_name;
		private _old_role_index = _role_list_old_current findIf {_x isEqualTo _player_machine_id};
		_role_list_old_current deleteAt _old_role_index;
		missionNamespace setVariable [_role_list_old_var_name, _role_list_old_current];
		publicVariable _role_list_old_var_name;
	};

	if (hasInterface && isServer) then {
		// Updates the UI when the server is being hosted by a player as they would otherwise not recieve the event from addPublicVariableEventHandler.
		private _role_menu = findDisplay IDD_ROLE_MENU;
		if !(isNull _role_menu) then {
			private _role_slot_idc = IDC_ROLE_SLOTS select _role_index;
			[_role_menu displayCtrl _role_slot_idc, _role_index] call client_fnc_role_menu_dialog_role_onLoad;

			if !(isNil "_role_current") then {
				private _role_slot_old_idc = IDC_ROLE_SLOTS select _role_current;
				[_role_menu displayCtrl _role_slot_old_idc, _role_current] call client_fnc_role_menu_dialog_role_onLoad;
			};
		};
	};
};
