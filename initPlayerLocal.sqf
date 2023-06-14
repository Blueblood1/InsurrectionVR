// https://community.bistudio.com/wiki/Event_Scripts#initPlayerLocal.sqf

#include "common.sqf"

params ["_player", "_didJIP"];

waitUntil {!(isNil "bis_fnc_init");};

[] call client_fnc_settings_init_globals;

[] spawn client_fnc_core_key_down_handler;