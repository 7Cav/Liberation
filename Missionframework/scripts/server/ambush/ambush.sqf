["Ambush script executed"] call BIS_fnc_logFormat;

if (ambush_in_progress  isEqualTo 1) exitwith {};

ambush_in_progress = 1;
abort_ambush = 0;

private _side = WEST;
private _friendlyPlayers = playableUnits select {side group _x == _side};

if (count _friendlyPlayers isEqualTo 0) exitwith {
	ambush_in_progress = 0;
};

private _harassablePlayers = _friendlyPlayers select {
		private _player = _x;
		alive _player
		//!(Player is in a vehicle and travelling over 29 km/h) - Don't harass moving vehicles.
		&& !(vehicle _player != _player && (canMove vehicle _player))
		//Player is on a combat side.
		&& side group _player in [west, east, independent]
};

if (count _harassablePlayers isEqualTo 0) exitwith {
	ambush_in_progress = 0;
};

private _chosenPlayer = selectRandom _harassablePlayers;

_nearfob = [ getpos _chosenPlayer ] call KPLIB_fnc_getNearestFob;
_nearfob = _chosenPlayer distance _nearfob;

if (_nearfob < 500) exitwith {
	ambush_in_progress = 0;
};

_nearBase = _chosenPlayer distance startbase;

if (_nearBase < 1000) exitwith {
	ambush_in_progress = 0;
};

_tree = nearestTerrainObjects [_chosenPlayer, ["Small Tree","Tree", "Bush"], 200];

if (count _tree isEqualTo 0) exitwith {
	ambush_in_progress = 0;
};

reverse _tree;
_tree = _tree select 0;
_tree = getPosATL _tree;

_ambush_grp = createGroup [EAST, true];
_squad = ([] call KPLIB_fnc_getSquadComp);

for "_x" from 1 to 8 do {	

	_unitType = selectRandom _squad;
	_unit = _ambush_grp createUnit [_unitType, _tree, [], 6, "FORM"];

	_waypoint = _ambush_grp addWaypoint [getPosATL _chosenPlayer, 0];
	_waypoint setWaypointType "MOVE";
	_waypoint setWaypointBehaviour "SAD";
	_waypoint setWaypointSpeed "FULL";
	_waypoint setWaypointBehaviour "STEALTH";
	_waypoint setWaypointCompletionRadius 1;
	_ambush_grp setCombatMode "RED";

};

while {(!isNull _ambush_grp) && (abort_ambush isEqualTo 0)} do 
{
	sleep 5;
	private _blufor_near = ((getpos (leader _ambush_grp)) nearEntities [["LAND"], 500]) findIf {alive _x && side _x isEqualTo GRLIB_side_friendly};

	if  (_blufor_near > -1) then {
		abort_ambush = 0;
	} else {
		abort_ambush = 1;
	};

};

{
    if (alive _x) then {
        deleteVehicle _x;
    };
} forEach (units _ambush_grp);

deleteGroup _ambush_grp;
ambush_in_progress = 0;
["Ambush script finished"] call BIS_fnc_logFormat;

