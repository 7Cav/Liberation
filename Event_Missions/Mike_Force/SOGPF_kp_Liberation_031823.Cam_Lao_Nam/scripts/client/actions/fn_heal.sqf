// Sweetwater
// Check if ACE medical, if so heal with ACE otherwise set player damage to 0

if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {

player call ace_medical_treatment_fnc_fullHealLocal;

} else {

player setDamage 0;

};