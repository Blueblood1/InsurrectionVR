// https://community.bistudio.com/wiki/Event_Scripts#initServer.sqf

#include "common.sqf"

waitUntil {!(isNil "bis_fnc_init");};

[] call server_fnc_role_init_globals;

// addMissionEventHandler ["PlayerConnected", {
// 	params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];
// 	// [_owner] call server_fnc_role_init_globals;
// 	[ROLE_DEFAULT] remoteExec ["client_fnc_role_aquired", _owner, false];
// }];
