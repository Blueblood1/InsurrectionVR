//--------------------Debugging--------------------
#define DEBUG_ENABLED

#ifdef DEBUG_ENABLED
	#define DEBUG(message) \
		if !(isNil "_fnc_scriptName") then { \
			private _message_with_scriptname = format["[%1]: %2", _fnc_scriptName, message]; \
			diag_log _message_with_scriptname; \
			systemChat _message_with_scriptname; \
		} else { \
			diag_log message; \
			systemChat message; \
		};
#endif
#ifndef DEBUG_ENABLED
	#define DEBUG(message)
#endif



//--------------------Settings--------------------
#define PING_RANGE 50
#define PING_LIFESPAN_SECONDS 10
#define PING_COLOR [0.25, 0.25, 0.25, 0.5]
#define PING_SIDE_ARROWS true

#define SETTINGS_CLIENT_VIEW_DISTANCE_DEFAULT 2500
#define SETTINGS_CLIENT_PING_ENABLED_DEFAULT true
#define SETTINGS_CLIENT_PING_SIDE_ARROWS_ENABLED_DEFAULT true



//--------------------Custom Dialogs--------------------
#define SETTINGS_FONT TahomaB

#define COLOR_WHITE {1,1,1,1}
#define COLOR_TRANSPARENT {0,0,0,0}
#define COLOR_SLATE_MENU_LIGHT {0.2,0.2,0.2,0.5}

#define COLOR_SLATE_DARK {0.102,0.102,0.102,1}
#define COLOR_SLATE_DARKER {0.2,0.2,0.2,1}

#define COLOR_TEAL {0,0.2,0.2,1}

#define COLOR_SLATE_MENU_TAB_ACTIVE {0.325, 0.1, 0.75, 1}
#define A_COLOR_SLATE_MENU_TAB_ACTIVE [0.325, 0.1, 0.75, 1]



#define IDD_SETTINGS_MENU 50000
#define IDC_SETTINGS_MENU_BUTTON_CLIENT 51000

#define IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TITLE 51001
#define IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_TEXTBOX 51002
#define IDC_SETTINGS_MENU_CLIENT_VIEW_DISTANCE_SLIDER 51003

#define SETTINGS_VISIBILITY_SLIDER_STEP_SIZE 1
#define SETTINGS_VISIBILITY_SLIDER_RANGE_UPPER_BOUND 10000
#define SETTINGS_VISIBILITY_SLIDER_RANGE_LOWER_BOUND 500
#define SETTINGS_VISIBILITY_SLIDER_RANGE {SETTINGS_VISIBILITY_SLIDER_RANGE_LOWER_BOUND, SETTINGS_VISIBILITY_SLIDER_RANGE_UPPER_BOUND}

#define IDC_SETTINGS_MENU_BUTTON_PING 52000
#define IDC_SETTINGS_MENU_PING_ENABLED_TITLE 52001
#define IDC_SETTINGS_MENU_PING_ENABLED_CHECKBOX 52002
#define IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_TITLE 52003
#define IDC_SETTINGS_MENU_PING_SIDE_ARROWS_ENABLED_CHECKBOX 52004

#define IDD_ROLE_MENU 60000
#define IDC_ROLE_MENU_ROLE_PLAYER_TREE 60011
#define IDC_ROLE_MENU_ROLE_SELECT_BUTTON 60012
#define IDC_ROLE_MENU_ROLE_SLOT_0 60001
#define IDC_ROLE_MENU_ROLE_SLOT_1 60002
#define IDC_ROLE_MENU_ROLE_SLOT_2 60003
#define IDC_ROLE_MENU_ROLE_SLOT_3 60004
#define IDC_ROLE_MENU_ROLE_SLOT_4 60005
#define IDC_ROLE_MENU_ROLE_SLOT_5 60006
#define IDC_ROLE_MENU_ROLE_SLOT_6 60007
#define IDC_ROLE_MENU_ROLE_SLOT_7 60008
#define IDC_ROLE_MENU_ROLE_SLOT_8 60009
#define IDC_ROLE_MENU_ROLE_SLOT_9 60010

#define IDC_ROLE_SLOTS [\
	IDC_ROLE_MENU_ROLE_SLOT_0,\
	IDC_ROLE_MENU_ROLE_SLOT_1,\
	IDC_ROLE_MENU_ROLE_SLOT_2,\
	IDC_ROLE_MENU_ROLE_SLOT_3,\
	IDC_ROLE_MENU_ROLE_SLOT_4,\
	IDC_ROLE_MENU_ROLE_SLOT_5,\
	IDC_ROLE_MENU_ROLE_SLOT_6,\
	IDC_ROLE_MENU_ROLE_SLOT_7,\
	IDC_ROLE_MENU_ROLE_SLOT_8,\
	IDC_ROLE_MENU_ROLE_SLOT_9\
]

#define ROLE_DEFAULT 0

#define ROLES [\
	["Rifleman",-1],\
	["Grenadier",10],\
	["Machine Gunner",10],\
	["Engineer",10],\
	["Medic",10],\
	["Squad Lead",7],\
	["Crewman",5],\
	["Pilot",10],\
	["FAC",1],\
	["Commander",1]\
] // [Rolename, Limit]


//--------------------Arma 3 Constants--------------------
#define IDD_MISSION 46

#define IDD_MAIN_MAP 12
#define IDC_MAP 51

#define IDC_SERVER_GET_READY 52
#define IDC_BUTTON_CONTINUE 1

#define IDC_OK 1
#define IDC_CANCEL 2
#define IDC_AUTOCANCEL 3
#define IDC_ABORT 4
#define IDC_RESTART 5
#define IDC_USER_BUTTON 6
#define IDC_EXIT_TO_MAIN 7

#define PAA_TACTICAL_PING_DEFAULT "\a3\Ui_f\data\IGUI\Cfg\TacticalPing\TacticalPingDefault_ca"

#define CLIENT_STATE_NONE 0
#define CLIENT_STATE_CREATED 1
#define CLIENT_STATE_CONNECTED 2
#define CLIENT_STATE_LOGGED_IN 3
#define CLIENT_STATE_MISSION_SELECTED 4
#define CLIENT_STATE_MISSION_ASKED 5
#define CLIENT_STATE_ROLE_ASSIGNED 6
#define CLIENT_STATE_MISSION_RECEIVED 7
#define CLIENT_STATE_GAME_LOADED 8
#define CLIENT_STATE_BRIEFING_SHOW 9
#define CLIENT_STATE_BRIEFING_READ 10
#define CLIENT_STATE_GAME_FINISHED 11
#define CLIENT_STATE_DEBRIEFING_READ 12

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_HITZONES         17
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_ITEMSLOT         103
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0
#define ST_UPPERCASE      0xC0
#define ST_LOWERCASE      0xD0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// Default grid
#define GUI_GRID_WAbs			((safezoneW / safezoneH) min 1.2)
#define GUI_GRID_HAbs			(GUI_GRID_WAbs / 1.2)
#define GUI_GRID_W			(GUI_GRID_WAbs / 40)
#define GUI_GRID_H			(GUI_GRID_HAbs / 25)
#define GUI_GRID_X			(safezoneX)
#define GUI_GRID_Y			(safezoneY + safezoneH - GUI_GRID_HAbs)

// Default text sizes
#define GUI_TEXT_SIZE_SMALL		(GUI_GRID_H * 0.8)
#define GUI_TEXT_SIZE_MEDIUM		(GUI_GRID_H * 1)
#define GUI_TEXT_SIZE_LARGE		(GUI_GRID_H * 1.2)

// Pixel grid
#define pixelScale	0.50
#define GRID_W (pixelW * pixelGrid * pixelScale)
#define GRID_H (pixelH * pixelGrid * pixelScale)
