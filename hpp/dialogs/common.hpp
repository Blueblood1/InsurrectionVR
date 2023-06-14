import RscButtonMenu;
import RscXSliderH;
import RscEdit;
import RscText;
import RscFrame;
import RscCheckBox;
import RscHTML;
import RscToolbox;
import RscTree;

class SlateBackground {
	type = 0;
	idc = -1;
	style = 0;
	text = "";

	colorBackground[] = COLOR_SLATE_MENU_LIGHT;
	colorText[] = COLOR_TRANSPARENT;

	font = SETTINGS_FONT;

	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
};

class SlateFrame : RscFrame {
	idc = -1;
	style = 64;
	text = "";

	colorBackground[] = COLOR_SLATE_DARK;
	colorText[] = COLOR_SLATE_DARK;

	font = SETTINGS_FONT;

	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
};

class SlateButton : RscButtonMenu {
	idc = -1;

	colorBackground[] = {0,0,0,0.8};
	colorBackgroundFocused[] = {1,1,1,1};
	colorBackground2[] = {0.75,0.75,0.75,1};
	color[] = {1,1,1,1};
	colorFocused[] = {0,0,0,1};
	color2[] = {0,0,0,1};
	colorText[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.25};
	textSecondary = "";
	colorSecondary[] = {1,1,1,1};
	colorFocusedSecondary[] = {0,0,0,1};
	color2Secondary[] = {0,0,0,1};
	colorDisabledSecondary[] = {1,1,1,0.25};

	font = SETTINGS_FONT;

	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
};

class SlateText : RscText {
	idc = -1;
	style = 0+192;

	colorBackground[] = COLOR_TRANSPARENT;
	colorText[] = COLOR_WHITE;

	font = SETTINGS_FONT;

	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
}

class SlateTextBox : RscEdit {
	idc = -1;
	style = 0;
	autocomplete = "";

	colorBackground[] = COLOR_TRANSPARENT;
	colorDisabled[] = COLOR_TRANSPARENT;
	colorSelection[] = COLOR_TEAL;
	colorText[] = COLOR_WHITE;
	
	font = SETTINGS_FONT;

	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
};

class SlateSlider: RscXSliderH {
	idc = -1;

	color[] = COLOR_WHITE;
	colorActive[] = COLOR_WHITE;
};

class SlateCheckbox : RscCheckBox {
	idc = -1;
}

class SlateToolbox : RscToolbox {
	idc = -1;
}

class SlateButtonRole : SlateButton {
	idc = -1;
	w = safeZoneW * 0.0815;
	h = safeZoneH * 0.043;
}

class SlateTree : RscTree {
	idc = -1;
}