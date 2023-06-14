#include "..\..\..\common.sqf"

{
	private _role_name = _x select 0;
	private _role_limit = _x select 1;
	private _role_index = _forEachIndex;

	private _role_list_var_name = format["GlobalRole_List_%1", _role_index];

	if (isNil {missionNamespace getVariable _role_list_var_name}) then {
		missionNamespace setVariable [_role_list_var_name, []];
		publicVariable _role_list_var_name;
	};
} forEach ROLES;