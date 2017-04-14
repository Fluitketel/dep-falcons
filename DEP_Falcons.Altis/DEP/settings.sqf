/*  Copyright 2016 Fluit
    
    This file is part of Dynamic Enemy Population.

    Dynamic Enemy Population is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation version 3 of the License.

    Dynamic Enemy Population is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Dynamic Enemy Population.  If not, see <http://www.gnu.org/licenses/>.
*/

// *************************************************************
// This is the settings file for DEP. Edit to your own liking.
// Every setting in this file is optional and will fall back
// to it's appropriate default value when commented out.
// For a complete list of possible settings and their values
// visit:   https://fluitarma.wordpress.com/dep-settings/
// *************************************************************

dep_debug = false;
if (PARAMS_DebugMode == 1) then {
    dep_debug = true;
};

// Mission parameters created in description.ext
dep_max_ai_tot  = PARAMS_DEP_AI_TOT;
dep_max_ai_loc  = PARAMS_DEP_AI_LOC;
dep_act_dist    = PARAMS_DEP_ACTDIST;
dep_safe_rad    = PARAMS_DEP_SAFERADIUS;
dep_air_patrols = PARAMS_DEP_AIR;
dep_mortars     = round random 2;
dep_aa_camps    = 5;
dep_side        = independent;

// Hard difficulty
if (PARAMS_Difficulty == 1) then {
    dep_housepop        = 130;
    dep_military        = 15;
    dep_bunkers         = 35;
    dep_veh_chance      = 0.6;
    dep_aa_camps        = 10;
    dep_mortars         = 1 + (round random 2);
    dep_roadblocks      = 30;
};

// Very hard difficulty
if (PARAMS_Difficulty == 2) then {
    dep_housepop        = 180;
    dep_military        = 30;
    dep_bunkers         = 40;
    dep_veh_chance      = 0.7;
    dep_aa_camps        = 20;
    dep_mortars         = 1 + (round random 3);
    dep_roadblocks      = 40;
};

if (dep_debug) then {
    dep_chat_logging = true;
    //dep_enemy_presence = 0.1;
};

//dep_zone_markers = ["town"];
dep_ground_vehicles = [
    "I_C_Offroad_02_unarmed_F",
    "I_C_Van_01_transport_F",
    "I_G_Van_01_transport_F",
    "I_G_Offroad_01_armed_F",
    "I_G_Offroad_01_F",
    "I_Truck_02_transport_F",
    "I_Truck_02_covered_F",
    "I_APC_Wheeled_03_cannon_F",
    "I_APC_tracked_03_cannon_F",
    "I_MBT_03_cannon_F",
    "I_MRAP_03_hmg_F",
    "I_MRAP_03_gmg_F",
    "I_C_Offroad_02_unarmed_F",
    "I_C_Van_01_transport_F",
    "I_G_Van_01_transport_F",
    "I_G_Offroad_01_armed_F",
    "I_G_Offroad_01_F",
    "I_Truck_02_transport_F",
    "I_Truck_02_covered_F"
    ];
dep_air_vehicles = [
    "I_Heli_light_03_F",
    "I_Heli_light_03_unarmed_F",
    "I_Heli_light_03_unarmed_F",
    "I_C_Heli_Light_01_civil_F",
    "I_Heli_Transport_02_F",
    "I_Plane_Fighter_03_CAS_F",
    "I_Plane_Fighter_03_AA_F",
    "I_Heli_light_03_F",
    "I_Heli_light_03_unarmed_F",
    "I_Heli_light_03_unarmed_F",
    "I_C_Heli_Light_01_civil_F",
    "I_Heli_Transport_02_F"
    ];
    
dep_safe_zone = [
    getMarkerPos "respawn_west", 
    getMarkerPos "safezone1", 
    getMarkerPos "safezone2"
];
    
// *************************************************************
// General settings
// *************************************************************

// dep_side = east; 
// dep_own_side = west;
// dep_despawn = 5;
// dep_respawn_timeout = 0;
// dep_debug = true;
// dep_logging = true;
// dep_chat_logging = true;
// dep_safe_zone = getMarkerPos "HQ";
// dep_safe_rad = 800;
// dep_map_margin = 400;
// dep_ieds = true;
// dep_mines = true;
// dep_ied_chance = 0.7;
// dep_cr_ied = false;
// dep_veh_chance = 0.5;
// dep_unit_init = "[_this] execVM ""unitinit.sqf"";";
// dep_useheadless = true;
// dep_headlessclient = "HC";
// dep_allow_mortars = false;
// dep_civilians = false;
// dep_fail_civilians = 0;
// dep_civ_fail_script = "";
// dep_zone_markers = ["town"];


// *************************************************************
// Performance settings
// *************************************************************

// dep_max_ai_loc = 8;
// dep_aim_player = 0.3;
// dep_max_ai_tot = 200;
// dep_act_dist = 800;
// dep_act_height = 200;
// dep_act_speed = 200;


// *************************************************************
// Location types
// *************************************************************

// dep_roadblocks = 5;
// dep_bunkers = 5;
// dep_patrols = 2;
// dep_forest_patrols = 0;
// dep_air_patrols = 1;
// dep_aa_camps = 3;
// dep_housepop = 20;
// dep_ambushes = 5;
// dep_military = 2;
// dep_town_occupation = 0.8;


// *************************************************************
// Class names
// *************************************************************

// Military forces
// dep_u_soldier       = "O_soldier_F";
// dep_u_gl            = "O_Soldier_GL_F";
// dep_u_ar            = "O_Soldier_AR_F";
// dep_u_at            = "O_Soldier_LAT_F";
// dep_u_medic         = "O_medic_F";
// dep_u_aa            = "O_Soldier_AA_F";
// dep_u_aaa           = "O_Soldier_AAA_F";
// dep_u_sl            = "O_Soldier_SL_F";
// dep_u_marksman      = "O_soldier_M_F";
// dep_u_sniper        = "O_Sniper_F";

// Guerilla forces
// dep_u_g_soldier     = "O_G_Soldier_F";
// dep_u_g_gl          = "O_G_Soldier_GL_F";
// dep_u_g_ar          = "O_G_Soldier_AR_F";
// dep_u_g_at          = "O_G_Soldier_LAT_F";
// dep_u_g_medic       = "O_G_medic_F";
// dep_u_g_sl          = "O_G_Soldier_SL_F";
// dep_u_g_marksman    = "O_G_Soldier_M_F";

// Vehicles
// dep_civ_veh         = ["C_Offroad_02_unarmed_F","C_Offroad_01_F","C_Truck_02_transport_F","C_Truck_02_covered_F","C_SUV_01_F"];
// dep_ground_vehicles = ["I_C_Offroad_02_unarmed_F","I_C_Van_01_transport_F","I_G_Van_01_transport_F","I_G_Offroad_01_armed_F","O_T_Truck_03_transport_ghex_F"];
//dep_air_vehicles     = ["I_C_Plane_Civil_01_F","I_Heli_light_03_F","I_C_Heli_Light_01_civil_F","I_Heli_Transport_02_F"];

// Static weapons
// dep_static_aa       = "O_static_AA_F";
// dep_static_at       = "O_static_AT_F";
// dep_static_hmg      = "O_HMG_01_high_F";
// dep_static_gmg      = "O_GMG_01_high_F";
// dep_static_hmg_tri  = "O_HMG_01_F";