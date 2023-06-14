#include "..\..\..\common.sqf"

if (hasInterface) then {
    [] spawn {
        waitUntil {
            if (getClientStateNumber == CLIENT_STATE_BRIEFING_READ) exitWith {true};
            if (!isNull findDisplay IDC_SERVER_GET_READY) exitWith {
                ctrlActivate (findDisplay IDC_SERVER_GET_READY displayCtrl IDC_BUTTON_CONTINUE);
                findDisplay IDC_SERVER_GET_READY closeDisplay IDC_OK;
                true
            };
            false
       };
    };
};