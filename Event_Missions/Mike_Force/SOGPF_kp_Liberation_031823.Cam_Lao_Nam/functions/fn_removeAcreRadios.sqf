// Remove ACRE radios 
// -- Sweetwater.I 08MAY21

params ["_unit"];
_allItems = items _unit;
_previouslyEquipedRadios = [];

///lists equiped radios
{
_step1 = _x splitString "_";
if ((_step1 select 0) == "ACRE") then {_previouslyEquipedRadios pushBackUnique _x;};
} forEach _allItems;

{
_unit removeItem _x;
} forEach _previouslyEquipedRadios;