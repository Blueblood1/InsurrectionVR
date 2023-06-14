#include "..\..\..\common.sqf"

params["_player_machine_id", "_jip"];

private _role_index = ROLE_DEFAULT;
private _role = ROLES select _role_index;
private _role_name = _role select 0;
private _role_limit = _role select 1;

private _role_player_var_name = format["GlobalRole_Player_%1", _player_machine_id];
missionNamespace setVariable [_role_player_var_name, _role_index];
publicVariable _role_player_var_name;

private _role_list_var_name = format["GlobalRole_List_%1", _role_index];
private _role_list_current = missionNamespace getVariable _role_list_var_name;
_role_list_current append [_player_machine_id];
missionNamespace setVariable [_role_list_var_name, _role_list_current];
publicVariable _role_list_var_name;