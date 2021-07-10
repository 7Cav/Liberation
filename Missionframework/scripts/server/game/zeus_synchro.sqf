waitUntil {!isNil "huron_typename"};

// Classnames of objects which should be added as editable for Zeus
private _vehicleClassnames = [toLower huron_typename];
{
    _vehicleClassnames append _x;
} forEach [
    KPLIB_crates,
    KPLIB_b_light_classes,
    KPLIB_b_heavy_classes,
    KPLIB_b_air_classes,
    KPLIB_b_static_classes,
    KPLIB_b_support_classes
];
if (KP_liberation_enemies_zeus) then {_vehicleClassnames append KPLIB_o_allVeh_classes;};

private _valids = [];
private _toRemove = [];
private _toAdd = [];

[
    {
        params ["_args"];
        _args params [];

        if !(allCurators isEqualTo []) then {

            If (isServer) then { 
                { 
                    _x addCuratorEditableObjects [allUnits,true]; 
                    _x addCuratorEditableObjects [vehicles,true]; 
                } forEach allCurators;             
            };

        }

    }, 60, []

] call CBA_fnc_addPerFrameHandler;