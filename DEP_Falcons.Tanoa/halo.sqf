if ((backpack player) != "B_Parachute") exitWith {
    hint "You don't have a parachute!";
};

openMap [true, false];
hintSilent "Click on the map where you'd like to HALO.";
onMapSingleClick "
_pos set [2, 1500]; 
player setPos _pos;
openMap [false, false];
";
waitUntil{!visibleMap};
onMapSingleClick "";