waitUntil {!isNil "dep_isclient"};
if !(dep_isclient) exitWith {};
waitUntil {!isNil "PARAMS_DebugMode"};

private ["_obj", "_condition", "_distance"];
_obj = _this select 0;

while {true} do {
    removeAllActions _obj;
    _obj addAction["HALO","halo.sqf", [], 6, false, false, "", "vehicle _this == _this", 6];
    if (PARAMS_DebugMode == 1) then {
        {
            if (_x != player) then {
                _obj addAction [name _x, "teleport.sqf", _x, 6, false, false, "", "vehicle _this == _this", 6];
            };
        } forEach allPlayers;
    };
    sleep 60;
};