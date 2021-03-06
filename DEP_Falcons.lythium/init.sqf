m_ishostedserver = if (isServer && !isDedicated) then {true} else {false};
m_isserver = if (isDedicated || m_ishostedserver) then {true} else {false};
m_isclient = if ((m_ishostedserver || !isDedicated) && (hasInterface)) then {true} else {false};
m_isheadless = if !(hasInterface || isDedicated) then {true} else {false};

m_ace       = isClass(configFile >> "cfgPatches" >> "ace_main");
m_acre      = isClass(configFile >> "cfgPatches" >> "acre_main");
m_taskforce = isClass(configFile >> "cfgPatches" >> "task_force_radio");
m_rhs 		= isClass(configFile >> "cfgPatches" >> "rhs_main");

// Don't replace watch with microdagr
if (m_taskforce) then {
    TF_give_microdagr_to_soldier = false;
};

// Process mission parameters
if (isNil "paramsArray") then {
    paramsArray = [];
};
for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
    call compile format ["PARAMS_%1 = %2", (configName ((missionConfigFile >> "Params") select _i)), (paramsArray select _i)];
};

if (isNil "PARAMS_DebugMode") then {
    PARAMS_DebugMode = 0;
};
if (isNil "PARAMS_Difficulty") then {
    PARAMS_Difficulty = 1;
};
if (isNil "PARAMS_DEP_AI_TOT") then {
    PARAMS_DEP_AI_TOT = 300;
};
if (isNil "PARAMS_DEP_AI_LOC") then {
    PARAMS_DEP_AI_LOC = 16;
};
if (isNil "PARAMS_DEP_ACTDIST") then {
    PARAMS_DEP_ACTDIST = 800;
};
if (isNil "PARAMS_DEP_SAFERADIUS") then {
    PARAMS_DEP_SAFERADIUS = 500;
};
if (isNil "PARAMS_DEP_AIR") then {
    PARAMS_DEP_AIR = 1;
};
if (isNil "PARAMS_DEP_CIVILIANS") then {
    PARAMS_DEP_CIVILIANS = 0;
};
if (isNil "PARAMS_DEP_MARKERS") then {
    PARAMS_DEP_MARKERS = 1;
};
if (isNil "PARAMS_daytime") then {
    PARAMS_daytime = 12;
};
if (isNil "PARAMS_Limited_Arsenal") then {
    PARAMS_Limited_Arsenal = 1;
};
if (isNil "PARAMS_base_location") then {
    PARAMS_base_location = -1;
};

// Initialize DEP
[] execVM "DEP\init.sqf";

if (m_isserver) then {
    /*m_bases = ["comms bravo","katkoula beach","tavanaka airbase","lijnhaven"];
    if (PARAMS_base_location >= 0) then {
        m_base_location = m_bases select PARAMS_base_location;
    } else {
        m_base_location = m_bases call BIS_fnc_selectRandom;
    };*/
    
    [PARAMS_daytime] call BIS_fnc_paramDaytime;
};

/*if (m_isclient) then {
    if (!isMultiplayer) then {
        waitUntil {count ([player] call BIS_fnc_getRespawnPositions) > 0};
        _spawnpositions = [player] call BIS_fnc_getRespawnPositions;
        player setPos (getPos (_spawnpositions select 0));
    };
};*/