params ["_sector"];

private _return = 0;

if (KP_liberation_cr_param_buildings) then {
    _return = count (nearestObjects [markerPos _sector, ["House"], 1.5 * GRLIB_capture_size] select {(damage _x >= 0.25) && !((typeOf _x) in KP_liberation_cr_ign_buildings) && (sizeOf (typeOf _x) >= 11)});
} else {
    _return = count (nearestObjects [markerPos _sector, ["House"], 1.5 * GRLIB_capture_size] select {(alive _x) && !((typeOf _x) in KP_liberation_cr_ign_buildings) && (sizeOf (typeOf _x) >= 11)});
};


_return
