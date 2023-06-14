class RoleMenu {
	idd = IDD_ROLE_MENU;
	onLoad = "_this call client_fnc_role_menu_dialog_onLoad;";

	class ControlsBackground {
		class RoleWindow : SlateBackground {
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.55;
		};
		class RoleWindowFrame : SlateFrame {
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.55;
		};
		class RoleWindowCenterSubFrameLeft : SlateFrame {
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.20625;
			h = safeZoneH * 0.46;
		};
		class RoleWindowCenterSubFrameRight : SlateFrame {
			x = safeZoneX + safeZoneW * 0.499;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.20625;
			h = safeZoneH * 0.46;
		};
		class RoleWindowRolesSubFrame : SlateFrame {
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.685;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.045;
		};
	};

	class Controls {
		class RolePlayerTree : SlateTree {
			idc = IDC_ROLE_MENU_ROLE_PLAYER_TREE;
			x = safeZoneX + safeZoneW * 0.495;
			y = safeZoneY + safeZoneH * 0.22475;

			w = safeZoneW * 0.20625;
			h = safeZoneH * 0.457;

			onLoad = "params ['_tv'];\
				_classes = 'true' configClasses (configFile >> 'CfgVehicles');\
				for '_i' from 0 to 10 do\
				{\
					_tv tvAdd [[], configName selectRandom _classes];\
					for '_j' from 0 to 10 do\
					{\
						_tv tvAdd [[_i], configName selectRandom _classes];\
						for '_k' from 0 to 10 do\
						{\
							_tv tvAdd [[_i, _j], configName selectRandom _classes];\
						};\
					};\
				};";
		};
		class RoleSelectButton : SlateButton {
			idc = IDC_ROLE_MENU_ROLE_SELECT_BUTTON;
			x = safeZoneX + safeZoneW * 0.294;
			y = safeZoneY + safeZoneH * 0.6545;
			text = "Select";
		};
		class RoleSlot0 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_0;
			x = safeZoneX + safeZoneW * 0.294;
			y = safeZoneY + safeZoneH * 0.6845;
			text = ROLE_TOOLBOX_SLOT_0;
			onLoad = "[_this select 0, 0] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 0] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot1 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_1;
			x = safeZoneX + safeZoneW * 0.3765;
			y = safeZoneY + safeZoneH * 0.6845;
			text = ROLE_TOOLBOX_SLOT_1;
			onLoad = "[_this select 0, 1] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 1] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot2 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_2;
			x = safeZoneX + safeZoneW * 0.459;
			y = safeZoneY + safeZoneH * 0.6845;
			text = ROLE_TOOLBOX_SLOT_2;
			onLoad = "[_this select 0, 2] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 2] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot3 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_3;
			x = safeZoneX + safeZoneW * 0.5415;
			y = safeZoneY + safeZoneH * 0.6845;
			text = ROLE_TOOLBOX_SLOT_3;
			onLoad = "[_this select 0, 3] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 3] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot4 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_4;
			x = safeZoneX + safeZoneW * 0.624;
			y = safeZoneY + safeZoneH * 0.6845;
			text = ROLE_TOOLBOX_SLOT_4;
			onLoad = "[_this select 0, 4] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 4] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot5 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_5;
			x = safeZoneX + safeZoneW * 0.294;
			y = safeZoneY + safeZoneH * 0.7295;
			text = ROLE_TOOLBOX_SLOT_5;
			onLoad = "[_this select 0, 5] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 5] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot6 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_6;
			x = safeZoneX + safeZoneW * 0.3765;
			y = safeZoneY + safeZoneH * 0.7295;
			text = ROLE_TOOLBOX_SLOT_6;
			onLoad = "[_this select 0, 6] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 6] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot7 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_7;
			x = safeZoneX + safeZoneW * 0.459;
			y = safeZoneY + safeZoneH * 0.7295;
			text = ROLE_TOOLBOX_SLOT_7;
			onLoad = "[_this select 0, 7] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 7] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot8 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_8;
			x = safeZoneX + safeZoneW * 0.5415;
			y = safeZoneY + safeZoneH * 0.7295;
			text = ROLE_TOOLBOX_SLOT_8;
			onLoad = "[_this select 0, 8] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 8] call client_fnc_role_menu_dialog_role_onClick;";
		};
		class RoleSlot9 : SlateButtonRole {
			idc = IDC_ROLE_MENU_ROLE_SLOT_9;
			x = safeZoneX + safeZoneW * 0.624;
			y = safeZoneY + safeZoneH * 0.7295;
			text = ROLE_TOOLBOX_SLOT_9;
			onLoad = "[_this select 0, 9] call client_fnc_role_menu_dialog_role_onLoad;";
			onButtonClick = "[_this select 0, 9] call client_fnc_role_menu_dialog_role_onClick;";
		};
	};
};
