/*
    File: fn_spawnCivilians.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-12-03
    Last Update: 2020-04-05
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Spawns civilians at given sector.

    Parameter(s):
        _sector - Sector to spawn the civilians at [STRING, defaults to ""]

    Returns:
        Spawned civilian units [ARRAY]
*/

params [
    ["_sector", "", [""]]
];

if (_sector isEqualTo "") exitWith {["Empty string given"] call BIS_fnc_error; []};

private _civs = [];
private _sPos = markerPos _sector;

// Amount and spread depending if capital or city/factory
private _amount = round ((3 + (floor (random 7))) * GRLIB_civilian_activity);
private _spread = 1;
if (_sector in sectors_bigtown) then {
    _amount = _amount + 10;
    _spread = 2.5;
};
_amount = _amount * (sqrt (GRLIB_unitcap));

// Civs will run scared if in danger of being shot.
civScared = { _this select 0 addEventHandler ["FiredNear", {
	_civ = _this select 0;

	//Remove the eventHandler to prevent spamming
	_civ removeAllEventHandlers "FiredNear";

	switch( round(random 2) ) do {
		case 0:{_civ switchMove "ApanPercMstpSnonWnonDnon_G01";  };
		case 1:{_civ playMoveNow "ApanPknlMstpSnonWnonDnon_G01"; };
		case 2:{_civ playMoveNow "ApanPpneMstpSnonWnonDnon_G01"; };
		default{_civ playMoveNow "ApanPknlMstpSnonWnonDnon_G01"; };
	};

	_civ setSpeedMode "FULL";
	(group _civ) setBehaviour "CARELESS";
	_civ enableFatigue false;

	_nH= nearestBuilding (getPos _civ);

	if (!isNil "_nH") then {
	_HP = _nH buildingPos - 1; // Finds list of all available building positions in the selected building
	_HP = selectRandom _HP; // Picks a building position from the list of building positions
	_civ doMove _HP; // Orders the civilian to move to the building position
	};}];
};

// Spawn civilians
private _grp = grpNull;
for "_i" from 1 to _amount do {
    _grp = createGroup [GRLIB_side_civilian, true];

    _civs pushBack (
        [
            selectRandom civilians,
            [(((_sPos select 0) + (75 * _spread)) - (random (150 * _spread))), (((_sPos select 1) + (75 * _spread)) - (random (150 * _spread))), 0],
            _grp
        ] call KPLIB_fnc_createManagedUnit
    );

    //[_grp] call add_civ_waypoints;
    [_grp, [_grp], 200, 4, [], true] call lambs_wp_fnc_taskPatrol;
};

//{
//    [_x] call civScared;
//} forEach _civs;

_civs
