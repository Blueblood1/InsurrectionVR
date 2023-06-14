#include "..\..\..\common.sqf"

waitUntil { !isNull findDisplay IDD_MISSION; };

(findDisplay IDD_MISSION) displayAddEventHandler ["KeyDown", {
	private _kpd = _this select [1, 4];
	{
		_x params ["_key", "_fnc"];
		if (_key isEqualTo _kpd) exitWith {[_kpd] spawn _fnc; true;};
		false;
	} forEach  [
		[[48, false, false, false], client_fnc_ping_send],
		[[48, true, false, false], client_fnc_ping_send],
		[[48, false, false, true], client_fnc_ping_send],
		[[48, true, false, true], client_fnc_ping_send],
		[[59, false, false, false], client_fnc_settings_menu_open_dialog],
		[[59, true, false, false], client_fnc_settings_menu_open_dialog],
		[[59, false, false, true], client_fnc_settings_menu_open_dialog],
		[[59, true, false, true], client_fnc_settings_menu_open_dialog],
		[[60, false, false, false], client_fnc_role_menu_open_dialog],
		[[60, true, false, false], client_fnc_role_menu_open_dialog],
		[[60, false, false, true], client_fnc_role_menu_open_dialog],
		[[60, true, false, true], client_fnc_role_menu_open_dialog]
	];	//dik, shift, ctrl, alt
}];