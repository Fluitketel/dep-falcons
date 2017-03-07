private ["_curpos", "_curdir", "_newpos"];

_curpos = getPosATL player;
_curdir = getDir player;
_newpos = [[10768,8669.81,9.6],[4397,7554,0.1],[11068,8478.21,0.07], [4715.54,1410.23,0.002]] call BIS_fnc_selectRandom;

cutText ["","BLACK OUT", 4]; 
sleep 5;
player switchMove "amovpercmstpssurwnondnon";
player allowDamage false;
player setCaptive true;
player setPosATL _newpos;
cutText ["", "BLACK IN", 4];
sleep 5;

sleep 15;
cutText ["","BLACK OUT", 4];
sleep 5; 
player setPosATL _curpos;
player setDir _curdir;
cutText ["", "BLACK IN", 4];
sleep 5;
player switchMove "";
player allowDamage true;
player setCaptive false;