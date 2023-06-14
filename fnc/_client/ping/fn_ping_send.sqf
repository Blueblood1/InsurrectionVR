#include "..\..\..\common.sqf"

private _ping_pos = screenToWorld [0.5, 0.5];
private _nearby_players = allPlayers select { (_x distance player <= PING_RANGE) && { side group _x isEqualTo playerSide } };

DEBUG(str _nearby_players)

[_ping_pos] remoteExec ["client_fnc_ping_recieve", _nearby_players, false];
