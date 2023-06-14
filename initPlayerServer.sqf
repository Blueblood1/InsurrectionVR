// https://community.bistudio.com/wiki/Event_Scripts#initPlayerServer.sqf

#include "common.sqf"

params ["_playerUnit", "_didJIP"];

waitUntil {!(isNil "bis_fnc_init");};

private _player_machine_id = owner _playerUnit;

[_player_machine_id, _didJIP] call server_fnc_role_init_player_globals;