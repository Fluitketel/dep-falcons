waitUntil {!isNil "m_isclient"};
if !(m_isclient) exitWith {};

waitUntil {!isNil "m_ace"};
waitUntil {!isNil "m_acre"};
waitUntil {!isNil "m_taskforce"};

PARAMS_ALLOW_BIS = 1;
PARAMS_ALLOW_FAL = 0;
PARAMS_ALLOW_ACE = 0;
PARAMS_ALLOW_RHS = 0;
PARAMS_ALLOW_3CB = 0;

if (m_ace) then { PARAMS_ALLOW_ACE = 1; };

_target = sideUnknown;
_restrictionDistance = 5;
//  _specNames _specSlots _specTypes ... all must have the same amounts
_specNames = 
[
    "Rifelman",
    "Grenadier", 
    "Autorifleman", 
    "AT Specialist", 
    "Medic", 
    "EOD", 
    "PilotCrewmen",
    "RTO",
    "Commander",
    "SquadLead",
    "TeamLead", 
    "Marksman",
    "Recon",
    "JTAC",
    "RconMedic",
    "UAVOperator",
    "RconExp",
    "Repair",
    "RconTeamLead"
];
_specTypes = 
[
	["B_Soldier_F", "B_T_Soldier_F"],
    ["B_Soldier_GL_F", "B_T_Soldier_GL_F"],
	["B_soldier_AR_F","B_T_Soldier_AR_F"],
	["B_soldier_LAT_F","B_soldier_AT_F", "B_T_Soldier_AT_F"],
	["B_medic_F", "B_T_Medic_F"],
	["B_soldier_exp_F", "B_T_Soldier_Exp_F"],
	["B_Helipilot_F","B_helicrew_F","B_Pilot_F","B_soldier_repair_F","B_T_Pilot_F","B_T_Helipilot_F"],
	["B_Soldier_A_F", "B_T_Soldier_unarmed_F"],
	["B_officer_F"],
	["B_Soldier_SL_F", "B_T_Soldier_SL_F"],
	["B_Soldier_TL_F", "B_T_Soldier_TL_F"],
	["B_recon_M_F","B_T_Sniper_F","B_T_Spotter_F", "B_T_soldier_M_F", "B_soldier_M_F"],
	["B_recon_F"],
	["B_recon_JTAC_F"],
	["B_recon_medic_F"],
	["B_soldier_UAV_F"],
	["B_recon_exp_F"],
	["B_T_Soldier_Repair_F"],
	["B_recon_TL_F"]
];

_specSlots = [];
{ _specSlots = _specSlots + [-1]; } forEach _specNames;

GENERAL_GLOBAL      = [];
Weapons_Standard    = [];

RifelmanItems       = [];
GrenadierItems      = [];		
AutoriflemanItems   = [];
ATItems             = [];
MedicItems          = [];
EODItems            = [];
PilotItems          = [];
RTOItems            = [];
CommanderItems      = [];
SquadLeadItems      = [];
TeamLeadItems       = [];
MarksmanItems       = [];
ReconItems          = [];
JTACItems           = [];
RconMedic           = [];
UAVItems            = [];
RconExp             = [];
Repair              = [];
RconTeamLead        = [];

if (PARAMS_ALLOW_BIS == 1) then {
    _VA_Bis_Script = execVM "FalconsArsenal\VA_Bis.sqf";
    waitUntil{scriptDone _VA_Bis_Script}; 
};

if (PARAMS_ALLOW_FAL == 1) then {
    _VA_Falcons_Script = execVM "FalconsArsenal\VA_Fal.sqf";
    waitUntil{scriptDone _VA_Falcons_Script}; 
};

if (PARAMS_ALLOW_ACE == 1) then {
    _VA_Ace_Script = execVM "FalconsArsenal\VA_Ace.sqf";
    waitUntil{scriptDone _VA_Ace_Script}; 
};

if (PARAMS_ALLOW_RHS == 1) then {
    _VA_Rhs_Script = execVM "FalconsArsenal\VA_Rhs.sqf";
    waitUntil{scriptDone _VA_Rhs_Script}; 
};

if (PARAMS_ALLOW_3CB == 1) then {
    _VA_3cb_Script = execVM "FalconsArsenal\VA_3cb.sqf";
    waitUntil{scriptDone _VA_3cb_Script}; 
};

// Set the allowed items for the player (only used for restrictions)
/*AllowedItems = [];
if ((typeOf player) in (_specTypes select 0))   then { AllowedItems = AllowedItems + RifelmanItems; };
if ((typeOf player) in (_specTypes select 1))   then { AllowedItems = AllowedItems + GrenadierItems; }; 
if ((typeOf player) in (_specTypes select 2)) 	then { AllowedItems = AllowedItems + AutoriflemanItems; }; 
if ((typeOf player) in (_specTypes select 3))   then { AllowedItems = AllowedItems + ATItems; }; 
if ((typeOf player) in (_specTypes select 4))   then { AllowedItems = AllowedItems + MedicItems; }; 
if ((typeOf player) in (_specTypes select 5))   then { AllowedItems = AllowedItems + EODItems; }; 
if ((typeOf player) in (_specTypes select 6))   then { AllowedItems = AllowedItems + PilotItems; }; 
if ((typeOf player) in (_specTypes select 7))   then { AllowedItems = AllowedItems + RTOItems; };  
if ((typeOf player) in (_specTypes select 8))   then { AllowedItems = AllowedItems + CommanderItems; }; 
if ((typeOf player) in (_specTypes select 9))   then { AllowedItems = AllowedItems + SquadLeadItems; }; 
if ((typeOf player) in (_specTypes select 10))  then { AllowedItems = AllowedItems + TeamLeadItems; }; 
if ((typeOf player) in (_specTypes select 11))  then { AllowedItems = AllowedItems + MarksmanItems; }; 
if ((typeOf player) in (_specTypes select 12))  then { AllowedItems = AllowedItems + ReconItems; }; 
if ((typeOf player) in (_specTypes select 13))  then { AllowedItems = AllowedItems + JTACItems; };  
if ((typeOf player) in (_specTypes select 14))  then { AllowedItems = AllowedItems + RconMedic; }; 
if ((typeOf player) in (_specTypes select 15))  then { AllowedItems = AllowedItems + UAVItems; }; 
if ((typeOf player) in (_specTypes select 16))  then { AllowedItems = AllowedItems + RconExp; }; 
if ((typeOf player) in (_specTypes select 17))  then { AllowedItems = AllowedItems + Repair; };*/ 

VA_MAIN = true;
	
_specItems = [
    RifelmanItems,
    GrenadierItems,
    AutoriflemanItems,
    ATItems,
    MedicItems,
    EODItems,
    PilotItems,
    RTOItems,
    CommanderItems,
    SquadLeadItems,
    TeamLeadItems,
    MarksmanItems,
    ReconItems,
    JTACItems,
    RconMedic,
    UAVItems,
    RconExp,
    Repair,
    RconTeamLead
 ];

[_target, [_this select 0, _restrictionDistance, _specNames, _specSlots, _specTypes, _specItems]] spawn FalconsArsenal_fnc_executeLocalArsenal;

