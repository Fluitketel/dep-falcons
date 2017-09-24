if (!isServer) exitWith {};
private ["_vehicle","_delay","_deserted","_transports","_armored","_utility"];
_vehicle = _this select 0;

_vehicle lock 0;

// Set the vehicle cargo items
_vehicle execVM "setVehicleCargo.sqf";

// Set the vehicle respawn settings
_delay = 600; // 10 minutes
_deserted = 21600; // 6 hours

_transports = [
    "B_LSV_01_armed_F",
    "B_LSV_01_unarmed_F",
    "B_MRAP_01_F",
    "B_MRAP_01_hmg_F",
    "B_MRAP_01_gmg_F",
    "B_Truck_01_transport_F",
    "B_Truck_01_covered_F"
];
_armored = [
    "B_APC_Wheeled_01_cannon_F"
];
_utility = [
    "B_Truck_01_ammo_F",
    "B_Truck_01_fuel_F",
    "B_Truck_01_medical_F",
    "B_Truck_01_Repair_F"
];
if (typeOf _vehicle in _transports || _vehicle isKindOf "Ship") then {
    _delay = 600; // 10 minutes
    _deserted = 21600; // 6 hours
};
if (typeOf _vehicle in _utility) then {
    _delay = 600; // 10 minutes
    _deserted = 0;
};
if (typeOf _vehicle in _armored || _vehicle isKindOf "Tank") then {
    _delay = 600; // 10 minutes
    _deserted = 0;
};
if (_vehicle isKindOf "Plane") then {
    _delay = 600; // 10 minutes
    _deserted = 0;
};
if (_vehicle isKindOf "Helicopter") then {
    _delay = 600; // 10 minutes
    _deserted = 0;
};
_nil = [_vehicle, _delay, _deserted, 0, false, false, "setVehicleCargo.sqf"] execVM "setVehicleRespawn.sqf";