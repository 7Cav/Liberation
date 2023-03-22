_arsenalList = [];

_arsenalList append GRLIB_arsenal_weapons;
_arsenalList append GRLIB_arsenal_magazines;
_arsenalList append GRLIB_arsenal_items;
_arsenalList append GRLIB_arsenal_backpacks;

kp_liberation_allowed_items = _arsenalList apply {toLower _x};

[player,_arsenalList,false] call ace_arsenal_fnc_addVirtualItems;


systemChat "Arsenal initilization complete.";