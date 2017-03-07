private["_time", "_skip"];
_time = _this select 0;

if (_time >= 0) then {
    skipTime (_time - daytime + 24 ) % 24;
};