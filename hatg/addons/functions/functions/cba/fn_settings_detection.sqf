#include "..\..\script_component.hpp"

#define SETTING_HEADER_DETECTION [SETTING_HEADER, QUOTE(Detection)]
#define SETTING_HEADER_DETECTION_STEALTH [SETTING_HEADER, QUOTE(Stealth)]

[
    "hatg_setting_surfaces",
    "CHECKBOX",
    ["$STR_HATG_Surface_Requirements", "$STR_HATG_Surface_Requirements_info"],
    SETTING_HEADER_DETECTION, 
    true,
    true,
    {
        params ["_value"];

        missionNamespace setVariable ["hatg_setting_surfaces", _value, true];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_cooldown",
    "SLIDER",
    ["$STR_HATG_Detection_Cooldown", "$STR_HATG_Detection_Cooldown_info"],
    SETTING_HEADER_DETECTION, 
    [0, 600, 30, 0],
    true,
    {
        params ["_value"];

        missionNamespace setVariable ["hatg_setting_cooldown", round(_value), true];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_distance_close",
    "SLIDER",
    ["$STR_HATG_Detection_Distance", "$STR_HATG_Detection_Distance_info"],
    SETTING_HEADER_DETECTION,
    [0, 100, 40, 0],
    true,
    {
        params ["_value"];

        missionNamespace setVariable ["hatg_setting_distance_close", round(_value), true];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_distance_close_multiplier",
    "SLIDER",
    ["$STR_HATG_Detection_Distance_multiplier", "$STR_HATG_Detection_Distance_multiplier_info"],
    SETTING_HEADER_DETECTION,
    [1, 5, 2, 0],
    true,
    {
        params ["_value"];

        missionNamespace setVariable ["hatg_setting_distance_close_multiplier", _value, true];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_distance_reset",
    "SLIDER",
    ["$STR_HATG_Reset_Shot_Counter", "$STR_HATG_Reset_Shot_Counter_info"],
    SETTING_HEADER_DETECTION_STEALTH,
    [-1, 30, 5, 0],
    true,
    {
        params ["_value"];

        missionNamespace setVariable ["hatg_setting_distance_reset", round(_value), true];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_distance_shots",
    "SLIDER",
    ["$STR_HATG_Shots_Before_Detection", "$STR_HATG_Shots_Before_Detection_info"],
    SETTING_HEADER_DETECTION_STEALTH,
    [-1, 60, 4, 0],
    true,
    {
        params ["_value"];

        missionNamespace setVariable ["hatg_setting_distance_shots", round(_value), true];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_movement_crouch",
    "LIST",
    ["$STR_HATG_Crouching_Movement_Speed", "$STR_HATG_Crouching_Movement_Speed_info"],
    SETTING_HEADER_DETECTION_STEALTH,
    [[0, 5, 12, 20], ["$STR_HATG_Movement_Speed_always", "$STR_HATG_Movement_Speed_sneaking", "$STR_HATG_Movement_Speed_walking", "$STR_HATG_Movement_Speed_never"], 1],
    true,
    {
        params ["_value"];

        missionNamespace setVariable ["hatg_setting_movement_crouch", _value, true];
    }
] call CBA_fnc_addSetting;