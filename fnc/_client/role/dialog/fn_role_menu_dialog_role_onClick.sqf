#include "..\..\..\..\common.sqf"

params ["_ctrl", "_role_index"];

private _role = ROLES select _role_index;
private _role_name = _role select 0;
private _role_limit = _role select 1;

private _role_list_var_name = format["GlobalRole_List_%1", _role_index];
private _role_current_players = missionNamespace getVariable _role_list_var_name;

if ((count _role_current_players) < _role_limit) then {
	[_role_index] remoteExec ["server_fnc_role_aquire_role", 2, false];
	DEBUG("FIRED REQUEST")
};
