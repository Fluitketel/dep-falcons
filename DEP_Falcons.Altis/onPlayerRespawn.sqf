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
if ((typeOf player) in ["B_Helipilot_F"]) then { _uniform = "U_B_HeliPilotCoveralls" };
player addUniform _uniform;