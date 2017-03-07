private["_overcast", "_rain", "_fog", "_wind", "_force"];
_overcast = _this select 0;
_rain  = _this select 1;
_fog = _this select 2;
_wind = _this select 3;

_force = false;

if (_overcast >= 0) then {
    0 setOvercast _overcast;
    _force = true;
};
if (_rain >= 0) then {
    0 setRain _rain;
    _force = true;
};
if (_fog >= 0) then {
    10 setFog _fog;
};
if (_wind >= 0) then {
    setWind [_wind, _wind, true];
};

if (_force) then {
    forceWeatherChange;
};