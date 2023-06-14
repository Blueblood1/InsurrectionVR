#include "..\..\..\common.sqf"

if !(GlobalSettingPingEnabled) exitWith {DEBUG("ping disabled in user settings")};

params ["_ping_pos"];

if (((lifeState player) in ["HEALTHY", "INJURED"])) then {
    private _ctrl_map = findDisplay IDD_MAIN_MAP displayCtrl IDC_MAP;
    private _active_pings = _ctrl_map getVariable ["_active_pings", []];

    _active_pings append [[_ping_pos, diag_tickTime]];
    _ctrl_map setVariable ["_active_pings", _active_pings];

    playsound ["TacticalPing4", false];

    if (count _active_pings == 1) then {
        private ["_eh_ping_draw_map", "_eh_ping_draw_3d", "_eh_ping_manager"];

        _eh_ping_draw_map = _ctrl_map ctrlAddEventHandler ["Draw", {
            private _ctrl_map = _this select 0;
            if !(GlobalSettingPingEnabled) exitWith { _ctrl_map setVariable ["_active_pings", []]; };
            private _active_pings = _ctrl_map getVariable ["_active_pings", []];
            if (count _active_pings > 0) then {
                {
                    _ping_pos = _x select 0;
                    _ping_time = _x select 1;
                    _ctrl_map drawIcon [
                        PAA_TACTICAL_PING_DEFAULT,
                        PING_COLOR,
                        _ping_pos,
                        64,
                        64,
                        0,
                        "Ping",
                        0,
                        0.03,
                        "TahomaB",
                        "center"
                    ];
                } forEach _active_pings;
            };
        }];

        _eh_ping_draw_3d = addMissionEventHandler ["draw3D", {
            private _ctrl_map = findDisplay IDD_MAIN_MAP displayCtrl IDC_MAP;
            if !(GlobalSettingPingEnabled) exitWith { _ctrl_map setVariable ["_active_pings", []]; };
            private _active_pings = _ctrl_map getVariable ["_active_pings", []];
            if (count _active_pings > 0) then {
                {
                    _ping_pos = _x select 0;
                    _ping_time = _x select 1;
                    drawIcon3D [
                        PAA_TACTICAL_PING_DEFAULT,
                        PING_COLOR,
                        _ping_pos,
                        1.5,
                        1.5,
                        0,
                        "Ping",
                        0,
                        0.03,
                        "TahomaB",
                        "center",
                        GlobalSettingPingSideArrowsEnabled,
                        0,
                        -0.065
                    ];
                } forEach _active_pings;
            };
        }];
    
        _eh_ping_manager = [_eh_ping_draw_map, _eh_ping_draw_3d] spawn {
            private _eh_ping_draw_map = _this select 0;
            private _eh_ping_draw_3d = _this select 1;
            private _ctrl_map = findDisplay IDD_MAIN_MAP displayCtrl IDC_MAP;
            while { count (_ctrl_map getVariable ["_active_pings", []]) > 0 } do {
                private _active_pings = _ctrl_map getVariable ["_active_pings", []];
                _active_pings = _active_pings select { (_x select 1) > (diag_tickTime - PING_LIFESPAN_SECONDS)};
                _ctrl_map setVariable ["_active_pings", _active_pings];
                sleep 1;
            };
            _ctrl_map ctrlRemoveEventHandler ["Draw", _eh_ping_draw_map]; 
            removeMissionEventHandler ["draw3D", _eh_ping_draw_3d];
            DEBUG("ping eh's removed")
        };
        DEBUG("ping eh's created")
    };
};