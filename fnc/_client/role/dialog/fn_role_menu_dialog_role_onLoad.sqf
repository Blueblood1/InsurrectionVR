#include "..\..\..\..\common.sqf"

params ["_ctrl", "_role_index"];

private _role_list_var_name = format["GlobalRole_List_%1", _role_index];
private _role_list_current = missionNamespace getVariable _role_list_var_name;

private _role = ROLES select _role_index;
private _role_text = _role select 0;
private _role_limit = _role select 1;

_ctrl ctrlSetStructuredText parseText format["<t align='center'>%1</t><br/><t align='center'>(%2/%3)</t>", _role_text, count _role_list_current, _role_limit];