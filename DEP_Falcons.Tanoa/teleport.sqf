private ["_unit", "_pos", "_newpos"];
_unit = _this select 1;
_pos = _this select 3;

if (typeName _pos == "OBJECT") then {
    if !(isNull _pos) then {
        _pos = getPos _pos;
    };
};

if (typeName _pos == "ARRAY") then {
    _newpos = _pos findEmptyPosition[0, 15, (typeOf _unit)];
    if ((count _newpos) == 3) then {
        _unit setPos _newpos;
        hint "POOF!";
    } else {
        hint "Unable to teleport";
    };
};