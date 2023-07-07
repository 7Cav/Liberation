/*
    Specific object init codes depending on classnames.

    Format:
    [
        Array of classnames as strings <ARRAY>,
        Code to apply <CODE>,
        Allow inheritance <BOOL> (default false)
    ]
    _this is the reference to the object with the classname

    Example:
        KPLIB_objectInits = [
            [
                ["O_soldierU_F"],
                {systemChat "CSAT urban soldier was spawned!"}
            ],
            [
                ["CAManBase"],
                {systemChat format ["Some human named '%1' was spawned!", name _this]},
                true
            ]
        ];
*/

KPLIB_objectInits = [
    // Set CAV logo on white flag
    [
        ["Flag_White_F"],
        {_this setFlagTexture "res\flag_00_ca.paa";}
    ],

    // Add helipads to zeus, as they can't be recycled after built
    [
        ["Helipad_base_F", "LAND_uns_Heli_pad", "Helipad", "LAND_uns_evac_pad", "LAND_uns_Heli_H"],
        {{[_x, [[_this], true]] remoteExecCall ["addCuratorEditableObjects", 2]} forEach allCurators;},
        true
    ],

    // Add ViV and build action to FOB box/truck
    [
        [FOB_box_typename, FOB_truck_typename],
        {
            [_this] spawn {
                params ["_fobBox"];
                waitUntil {sleep 0.1; time > 0};
                [_fobBox] call KPLIB_fnc_setFobMass;
                if ((typeOf _fobBox) isEqualTo FOB_box_typename) then {
                    [_fobBox] call KPLIB_fnc_setFobMass;
                    [_fobBox] remoteExecCall ["KPLIB_fnc_setLoadableViV", 0, _fobBox];
                };
                [_fobBox] remoteExecCall ["KPLIB_fnc_addActionsFob", 0, _fobBox];
            };
        }
    ],

    // Add FOB building damage handler override and repack action
    [
        [FOB_typename],
        {
            _this addEventHandler ["HandleDamage", {0}];
            [_this] spawn {
                params ["_fob"];
                waitUntil {sleep 0.1; time > 0};
                [_fob] remoteExecCall ["KPLIB_fnc_addActionsFob", 0, _fob];
            };
        }
    ],

    // Add ViV action to Arsenal crate
    [
        [Arsenal_typename],
        {
            [_this] spawn {
                params ["_arsenal"];
                waitUntil {sleep 0.1; time > 0};
                [_arsenal] remoteExecCall ["KPLIB_fnc_setLoadableViV", 0, _arsenal];
            };
        }
    ],

    // Add storage type variable to built storage areas (only for FOB built/loaded ones)
    [
        [KP_liberation_small_storage_building, KP_liberation_large_storage_building],
        {_this setVariable ["KP_liberation_storage_type", 0, true];}
    ],

    // Add ACE variables to corresponding building types
    [
        [KP_liberation_recycle_building],
        {_this setVariable ["ace_isRepairFacility", 1, true];}
    ],
    [
        KP_liberation_medical_facilities,
        {_this setVariable ["ace_medical_isMedicalFacility", true, true];}
    ],
    [
        KP_liberation_medical_vehicles,
        {_this setVariable ["ace_medical_isMedicalVehicle", true, true];}
    ],

    // Hide Cover on big GM trucks
    [
        ["gm_ge_army_kat1_454_cargo", "gm_ge_army_kat1_454_cargo_win"],
        {_this animateSource ["cover_unhide", 0, true];}
    ],
    // empty boxes script
    [
        ["Box_T_NATO_Wps_F", "Box_T_NATO_WpsSpecial_F", "Box_NATO_Equip_F"],
        {
        clearWeaponCargo _this; 
        clearMagazineCargo _this;
        clearItemCargo _this;
        }
    ],
    // MH-60 ACE FRIES
    [
        ["RHS_CH_47F", "RHS_UH60M", "RHS_UH60M_d", "RHS_UH60M_MEV2", "rhsusf_CH53E_USMC", "RHS_UH1Y", "rhsusf_CH53E_USMC_GAU21"],
        {
        [_this] call ace_fastroping_fnc_equipFRIES;
        }
    ],

    //AMMO Supply Changes
    [
        ["Box_NATO_AmmoVeh_F"],
        {[_this, 600] call ace_rearm_fnc_setSupplyCount;}
    ],
    [
        ["rhsusf_m113d_usarmy_supply"],
        {[_this, 1000] call ace_rearm_fnc_setSupplyCount;}
    ],
    [
        ["B_Slingload_01_Ammo_F"],
        {[_this, 9000] call ace_rearm_fnc_setSupplyCount;}
    ],
    //FUEL Supply Changes 
    [
        ["B_Slingload_01_Fuel_F"],
        {[_this, 40000] call ace_refuel_fnc_setFuel;}
    ],
    [
        ["FlexibleTank_01_forest_F", "FlexibleTank_01_sand_F"],
        {[_this, 800] call ace_refuel_fnc_setFuel;}
    ],
    [
        ["rhsusf_M978A4_BKIT_usarmy_d", "rhsusf_M978A4_usarmy_d", "rhsusf_M978A4_usarmy_wd", "rhsusf_M978A4_BKIT_usarmy_wd"],
        {[_this, 15000] call ace_refuel_fnc_setFuel;}
    ],

    // Make sure a slingloaded object is local to the helicopter pilot (avoid desync and rope break)
    [
        ["Helicopter"],
        {if (isServer) then {[_this] call KPLIB_fnc_addRopeAttachEh;} else {[_this] remoteExecCall ["KPLIB_fnc_addRopeAttachEh", 2];};},
        true
    ],

    // Add valid vehicles to support module, if system is enabled
    [
        KP_liberation_suppMod_artyVeh,
        {if (KP_liberation_suppMod > 0) then {KPLIB_suppMod_arty synchronizeObjectsAdd [_this];};}
    ],

    // Disable autocombat (if set in parameters) and fleeing
    [
        ["Man"],
        {
            if (!(GRLIB_autodanger) && {(side _this) isEqualTo GRLIB_side_friendly}) then {
                _this disableAI "AUTOCOMBAT";
            };
            _this allowFleeing 0;
        },
        true
    ],
    //add vn ammo trucks for rearm function
    [
        ["vn_b_wheeled_m54_ammo", "vn_b_wheeled_m54_ammo_airport"],
        {[_this, 4000] call ace_rearm_fnc_setSupplyCount;}
    ],
    //add vn repair trucks to var for repairs function 
    [
        ["vn_b_wheeled_m54_repair", "vn_b_wheeled_m54_repair_airport"],
        {_this setVariable ["ACE_isRepairVehicle", 1, true];}
    ],
    //add vn fuel trucks for refuel function 
    [
        ["vn_b_wheeled_m54_fuel", "vn_b_wheeled_m54_fuel_airport"],
        {[_this, 20000] call ace_refuel_fnc_makeSource;}
    ],
    //add vn heli for ace medical function
    [
        ["vn_b_air_uh1d_01_07", "vn_b_air_uh1d_01_02", "vn_b_air_uh1d_01_01"],
        {_this setVariable ["ace_medical_isMedicalVehicle", true, true];}
    ]
];
