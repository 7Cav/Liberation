params ["_vehicle"];
private _vehicleClass = toLower (typeOf _vehicle);

// Cargo is always allowed
private _isCargo = (_vehicle getCargoIndex player) != -1;
if (_isCargo || _vehicle isKindOf "ParachuteBase") exitWith {};

private _permissibleVehicles = [
    [KPLIB_typeLightClasses, "STR_PERMISSION_NO_LIGHT"],
    [KPLIB_typeHeavyClasses, "STR_PERMISSION_NO_ARMOR"],
    [KPLIB_typeAirClasses, "STR_PERMISSION_NO_AIR"]
];

private _permissionIdx = _permissibleVehicles findIf {_vehicleClass in (_x select 0)};
if (_permissionIdx isEqualTo -1) exitWith {};
// Pilot Slot restriction
if (typeof player isNotEqualTo pilot_classname && typeof player isNotEqualTo fixed_wing_classname && _permissionIdx isEqualTo 2) exitWith {
    moveOut player;
    hintSilent "You must be in a pilot slot to fly";
};

if !([_permissionIdx] call KPLIB_fnc_hasPermission) exitWith {
    moveOut player;
    hint localize (_permissibleVehicles select _permissionIdx select 1);
};
