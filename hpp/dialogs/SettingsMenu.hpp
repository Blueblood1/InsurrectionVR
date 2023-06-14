class SettingsMenu {
	idd = IDD_SETTINGS_MENU;
	onLoad = "_this call client_fnc_settings_menu_dialog_onLoad;";
	class ControlsBackground {
		class SettingsWindow : SlateBackground {
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.55;
		};
		class SettingsWindowFrame : SlateFrame {
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.55;
		};
		class SettingsWindowSubFrame : SlateFrame {
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.10125;
			h = safeZoneH * 0.55;
		};
	};
	class Controls {
		class SettingsButtonClient : SlateButton {
			idc = IDC_SETTINGS_MENU_BUTTON_CLIENT;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.234;
			w = safeZoneW * 0.0875;
			h = safeZoneH * 0.035;
			text = "Client";
			onButtonClick = "[_this select 0, 1] call client_fnc_settings_menu_dialog_tab_onClick;";
		};
		class SettingsButtonPing : SlateButton {
			idc = IDC_SETTINGS_MENU_BUTTON_PING;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.28;
			w = safeZoneW * 0.0875;
			h = safeZoneH * 0.035;
			text = "Ping";
			onButtonClick = "[_this select 0, 2] call client_fnc_settings_menu_dialog_tab_onClick;";
		};
		class SettingsClientViewDistanceTitle : SlateText {
			idc = IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TITLE;
			x = safeZoneX + safeZoneW * 0.4;
			y = safeZoneY + safeZoneH * 0.235;
			w = safeZoneW * 0.1375;
			h = safeZoneH * 0.035;
			text = "View Distance";
			onLoad = "(_this select 0) ctrlShow false;";
		};
		class SettingsClientViewDistanceTextBox : SlateTextBox {
			idc = IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TEXTBOX;
			x = safeZoneX + safeZoneW * 0.56875;
			y = safeZoneY + safeZoneH * 0.235;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.035;
			text = SETTINGS_CLIENT_VIEW_DISTANCE_DEFAULT;
			onEditChanged = "_this call client_fnc_settings_menu_dialog_view_distance_onChange;";
			onKeyDown = "_this call client_fnc_settings_menu_dialog_view_distance_onKeyDown;";
			onLoad = "(_this select 0) ctrlShow false; (_this select 0) ctrlSetText str GlobalSettingClientViewDistance;";
		};
		class SettingsClientViewDistanceSlider : SlateSlider {
			idc = IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_SLIDER;
			x = safeZoneX + safeZoneW * 0.4;
			y = safeZoneY + safeZoneH * 0.275;
			w = safeZoneW * 0.283;
			h = safeZoneH * 0.02;
			sliderRange[] = SETTINGS_VISIBILITY_SLIDER_RANGE;
			sliderStep = SETTINGS_VISIBILITY_SLIDER_STEP_SIZE;
			sliderPosition = SETTINGS_CLIENT_VIEW_DISTANCE_DEFAULT;
			onSliderPosChanged = "_this call client_fnc_settings_menu_dialog_view_distance_onChange;";
			onLoad = "(_this select 0) ctrlShow false; (_this select 0) sliderSetPosition GlobalSettingClientViewDistance;";
		};
		class SettingsPingEnabledCheckbox : SlateCheckbox {
			idc = IDC_SETTINGS_MENU_PING_ENABLED_CHECKBOX;
			x = safeZoneX + safeZoneW * 0.4;
			y = safeZoneY + safeZoneH * 0.235;
			w = safeZoneW * 0.025;
			h = safeZoneH * 0.03;
			onLoad = "(_this select 0) ctrlShow false; (_this select 0) cbSetChecked (GlobalSettingPingEnabled);";
			onCheckedChanged = "if ((_this select 1) == 1) then {GlobalSettingPingEnabled = true;} else {GlobalSettingPingEnabled = false;};";
		};
		class SettingsPingEnabledTitle : SlateText {
			idc = IDC_SETTINGS_MENU_PING_ENABLED_TITLE;
			x = safeZoneX + safeZoneW * 0.425;
			y = safeZoneY + safeZoneH * 0.235;
			w = safeZoneW * 0.15;
			h = safeZoneH * 0.03;
			text = "Enable Ping System";
			color[] = {1,0,0,1};
			onLoad = "(_this select 0) ctrlShow false;";
		};
		class SettingsPingSideArrowsEnabledCheckbox : SlateCheckbox {
			idc = IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_CHECKBOX;
			x = safeZoneX + safeZoneW * 0.4;
			y = safeZoneY + safeZoneH * 0.265;
			w = safeZoneW * 0.025;
			h = safeZoneH * 0.03;
			onLoad = "(_this select 0) ctrlShow false; (_this select 0) cbSetChecked (GlobalSettingPingSideArrowsEnabled);";
			onCheckedChanged = "if ((_this select 1) == 1) then {GlobalSettingPingSideArrowsEnabled = true;} else {GlobalSettingPingSideArrowsEnabled = false;};";
		};
		class SettingsPingSideArrowsEnabledTitle : SlateText {
			idc = IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_TITLE;
			x = safeZoneX + safeZoneW * 0.425;
			y = safeZoneY + safeZoneH * 0.265;
			w = safeZoneW * 0.15;
			h = safeZoneH * 0.03;
			text = "Show Side Arrows";
			color[] = {1,0,0,1};
			onLoad = "(_this select 0) ctrlShow false;";
		};
	};
};
