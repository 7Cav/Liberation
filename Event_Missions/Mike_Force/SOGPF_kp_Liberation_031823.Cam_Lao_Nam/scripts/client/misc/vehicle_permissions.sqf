params ["_vehicle"];
private _vehicleClass = toLower (typeOf _vehicle);
private _allowed = 0;

// Cargo is always allowed
private _isCargo = (_vehicle getCargoIndex player) != -1;
if (_isCargo || _vehicle isKindOf "ParachuteBase") exitWith {};


if (_vehicle isKindOf "RHS_UH60M") then {
    if (player isEqualTo gunner _vehicle || player isEqualTo (_vehicle turretUnit [2])) exitWith {
        _allowed = 1;
    };
};

if (_vehicle isKindOf "RHS_CH_47F") then {
    if (player isEqualTo gunner _vehicle || player isEqualTo (_vehicle turretUnit [2])) exitWith {
        _allowed = 1;
    };
};

if (_vehicle isKindOf "vn_air_uh1d_02_base") then {
    if (player isEqualTo gunner _vehicle || player isEqualTo (_vehicle turretUnit [2])) exitWith {
        _allowed = 1;
    };
};

if (_vehicle isKindOf "vn_air_ch34_01_base") then {
    if (player isEqualTo gunner _vehicle || player isEqualTo (_vehicle turretUnit [2])) exitWith {
        _allowed = 1;
    };
};

if (_vehicle isKindOf "vn_air_oh6a_base") then {
    if (player isEqualTo (_vehicle turretUnit [1])) exitWith {
        _allowed = 1;
    };
};

if (_allowed isEqualTo 1) exitWith {};

private _permissibleVehicles = [
    [KPLIB_typeLightClasses, "STR_PERMISSION_NO_LIGHT"],
    [KPLIB_typeHeavyClasses, "STR_PERMISSION_NO_ARMOR"],
    [KPLIB_typeAirClasses, "STR_PERMISSION_NO_AIR"]
];

private _permissionIdx = _permissibleVehicles findIf {_vehicleClass in (_x select 0)};
if (_permissionIdx isEqualTo -1) exitWith {};
// Pilot Slot restriction
if (typeof player isNotEqualTo pilot_classname && typeof player isNotEqualTo fixed_wing_classname && typeof player isNotEqualTo rotary_cas_classname && typeof player isNotEqualTo rotary_logistics_classname && _permissionIdx isEqualTo 2) exitWith {
    moveOut player;
    hintSilent "You must be on teamspeak and in a pilot slot to fly";
};

if !([_permissionIdx] call KPLIB_fnc_hasPermission) exitWith {
    moveOut player;
    hint localize (_permissibleVehicles select _permissionIdx select 1);
};
