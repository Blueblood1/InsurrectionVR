#include "..\..\..\common.sqf"

//---CLIENT---
GlobalSettingClientViewDistance = SETTINGS_CLIENT_VIEW_DISTANCE_DEFAULT;

//---PING---
GlobalSettingPingEnabled = SETTINGS_CLIENT_PING_ENABLED_DEFAULT && true;
GlobalSettingPingSideArrowsEnabled = SETTINGS_CLIENT_PING_SIDE_ARROWS_ENABLED_DEFAULT && true;

DEBUG("globals loaded")