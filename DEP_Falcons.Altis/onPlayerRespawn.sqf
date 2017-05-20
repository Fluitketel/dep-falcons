removeAllWeapons player;
removeBackpack player;
removeVest player;
removeHeadgear player;
removeGoggles player;

player unassignItem "NVGoggles";
player removeItem "NVGoggles";

player unassignItem "NVGoggles_tna_F";
player removeItem "NVGoggles_tna_F";

player unassignItem "ItemRadio";
player removeItem "ItemRadio";

removeUniform player;
_uniform = "U_B_CTRG_1";
_headgear = "";
if ((typeOf player) in ["B_Helipilot_F", "B_helicrew_F"]) then { 
    _uniform = "U_B_HeliPilotCoveralls"; 
};
if ((typeOf player) in ["B_Pilot_F"]) then { 
    _uniform = "U_B_PilotCoveralls"; 
    _headgear = "H_PilotHelmetFighter_B";
};
player addUniform _uniform;
if (_headgear != "") then { player addHeadgear _headgear; };