private ["_obj", "_condition", "_distance"];

_obj = _this select 0;
_obj enableSimulation false; 
_obj allowDamage false; 

_condition = "vehicle _this == _this && (rank _this == ""COLONEL"" || rank _this == ""MAJOR"") ";
_distance = 3;

// Rain
_obj addAction [
    "<t color='#3399ff' size='1.5'>Clear</t>",
    {[[[0, 0, -1, -1],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
_obj addAction [
    "<t color='#3399ff' size='1.5'>Overcast</t>",
    {[[[0.5, 0, -1, -1],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
_obj addAction [
    "<t color='#3399ff' size='1.5'>Light rain</t>",
    {[[[0.8, 0.2, -1, -1],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
_obj addAction [
    "<t color='#3399ff' size='1.5'>Heavy rain</t>",
    {[[[1, 0.8, -1, -1],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];

// Fog
_obj addAction [
    "<t color='#B8B8B8' size='1.5'>No fog</t>",
    {[[[-1, -1, 0, -1],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];    

_obj addAction [
    "<t color='#B8B8B8' size='1.5'>Medium fog</t>",
    {[[[-1, -1, 0.05, -1],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];

_obj addAction [
    "<t color='#B8B8B8' size='1.5'>Thick fog</t>",
    {[[[-1, -1, 0.2, -1],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
// Wind
_obj addAction [
    "<t color='#996633' size='1.5'>No wind</t>",
    {[[[-1, -1, -1, 0],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
_obj addAction [
    "<t color='#996633' size='1.5'>Light wind</t>",
    {[[[-1, -1, -1, 3],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];

_obj addAction [
    "<t color='#996633' size='1.5'>Heavy wind</t>",
    {[[[-1, -1, -1, 15],"weather.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];    
    
// Time of day    
_obj addAction [
    "<t color='#009933' size='1.5'>Time 00h00</t>",
    {[[[0],"time.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
_obj addAction [
    "<t color='#009933' size='1.5'>Time 06h30</t>",
    {[[[6.5],"time.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
_obj addAction [
    "<t color='#009933' size='1.5'>Time 12h00</t>",
    {[[[12],"time.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];
    
_obj addAction [
    "<t color='#009933' size='1.5'>Time 18h00</t>",
    {[[[18],"time.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;}, 
    nil, 6, true, true, "", _condition, _distance];

// Just kidding   
_obj addAction [
    "<t color='#3399ff' size='2'>Admin Control Center</t>",
    {null = [] execVM "joke.sqf";}, 
    nil, 6, true, true, "", "vehicle _this == _this && !(captive _this) " , 2];