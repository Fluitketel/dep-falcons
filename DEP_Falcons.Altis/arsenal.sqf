private ["_box", "_ammo"];
_box = _this select 0;

waitUntil {!isNil "PARAMS_Limited_Arsenal"};
if (PARAMS_Limited_Arsenal == 1) then {
    _ammo = [_box] execVM "FalconsArsenal\VA_Main.sqf";
} else {
    _box addAction ["Gear", "[""Open"",true] spawn BIS_fnc_arsenal;", nil, 6, true, true, "", "vehicle player == player"];
};