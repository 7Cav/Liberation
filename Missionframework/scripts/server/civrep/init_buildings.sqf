private _start = diag_tickTime;
if (isServer) then {["init_buildings.sqf initialising...", "CIVREP"] call KPLIB_fnc_log;};

KP_liberation_cr_ign_buildings = [];

KP_liberation_cr_sectorbuildings = [];

{
    KP_liberation_cr_sectorbuildings pushBack [_x, [_x] call F_cr_getBuildings];
} forEach sectors_capture;

{
    KP_liberation_cr_sectorbuildings pushBack [_x, [_x] call F_cr_getBuildings];
} forEach sectors_bigtown;

if (isServer) then {[format ["init_buildings.sqf finished. Time needed: %1 seconds", diag_ticktime - _start], "CIVREP"] call KPLIB_fnc_log;};
if (KP_liberation_civrep_debug > 0) then {
    {
        [format ["%1: %2", markerText (_x select 0), (_x select 1)], "CIVREP"] call KPLIB_fnc_log;
    } forEach KP_liberation_cr_sectorbuildings;
};
