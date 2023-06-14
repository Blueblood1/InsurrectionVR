class CfgFunctions {
    class client {
        class core {
            tag = "core";
            file = "fnc\_client\core";
            class core_key_down_handler;
            class core_skip_briefing_preInit {
                preInit = 1;
            };
        };
        class ping {
            tag = "ping";
            file = "fnc\_client\ping";
            class ping_recieve;
            class ping_send;
        };
        class role {
            tag = "role";
            file = "fnc\_client\role";
            class role_menu_dialog_onLoad {file = "fnc\_client\role\dialog\fn_role_menu_dialog_onLoad.sqf";};
            class role_menu_dialog_onUnload {file = "fnc\_client\role\dialog\fn_role_menu_dialog_onUnload.sqf";};
            class role_menu_dialog_role_onLoad {file = "fnc\_client\role\dialog\fn_role_menu_dialog_role_onLoad.sqf";};
            class role_menu_dialog_role_onClick {file = "fnc\_client\role\dialog\fn_role_menu_dialog_role_onClick.sqf";};
            class role_menu_open_dialog;
        };
        class settings {
            tag = "settings";
            file = "fnc\_client\settings";
            class settings_menu_dialog_onLoad {file = "fnc\_client\settings\dialog\fn_settings_menu_dialog_onLoad.sqf";};
            class settings_menu_dialog_tab_onClick {file = "fnc\_client\settings\dialog\fn_settings_menu_dialog_tab_onClick.sqf";};
            class settings_menu_dialog_view_distance_onChange {file = "fnc\_client\settings\dialog\fn_settings_menu_dialog_view_distance_onChange.sqf";};
            class settings_menu_dialog_view_distance_onKeyDown {file = "fnc\_client\settings\dialog\fn_settings_menu_dialog_view_distance_onKeyDown.sqf";};
            class settings_menu_open_dialog;
            class settings_init_globals;
        };
    };
    class server {
        class core {
            file = "fnc\_server\core";
        };
        class role {
            tag = "role";
            file = "fnc\_server\role";
            class role_aquire_role;
            class role_init_globals;
            class role_init_player_globals;
        };
    };
};