waitUntil {!isNil "build_confirmed"};
waitUntil {!isNil "one_synchro_done"};
waitUntil {!isNil "one_eco_done"};
waitUntil {one_synchro_done};
waitUntil {one_eco_done};

private ["_next_truck", "_next_box", "_truck_load", "_checked_trucks", "_checked_boxes", "_action_id","_action_id2","_action_id3","_action_id4","_b_action_id1","_b_action_id2","_b_action_id3","_b_action_id4"];

managed_trucks = [];
managed_boxes = [];
managed_areas = [];

[
    {
        params ["_args"];
        _args params [];

        if ([5] call KPLIB_fnc_hasPermission) then {

        _nearammoboxes = ((getpos player) nearEntities [KPLIB_crates, 10]);
        _neartransporttrucks = ((getpos player) nearEntities [KPLIB_transport_classes, 10]);
        _nearstorageareas = nearestObjects [player, KPLIB_storageBuildings, 10];

        _checked_trucks = [];

        {
            _next_truck = _x;
            _truck_load = _next_truck getVariable ["GRLIB_ammo_truck_load", 0];

            if (!(_next_truck in managed_trucks) && (_truck_load > 0)) then {
                    _action_id = _next_truck addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_UNLOAD_BOX" + "</t>","scripts\client\ammoboxes\do_unload_truck.sqf","",-500,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 8) && (isNull objectParent player)"];
                    _next_truck setVariable [ "GRLIB_ammo_truck_action", _action_id, false ];
                    managed_trucks pushback _next_truck;
            };

            if ((_next_truck in managed_trucks) && _truck_load isEqualTo 0) then {
                _next_truck removeAction (_next_truck getVariable ["GRLIB_ammo_truck_action", -1]);
                managed_trucks = managed_trucks - [_next_truck];
            };

            _checked_trucks pushback _next_truck;

        } foreach _neartransporttrucks;

        {
            _next_truck = _x;
            if (!(_next_truck in _checked_trucks)) then {
                managed_trucks = managed_trucks - [_next_truck];
                _next_truck removeAction ( _next_truck getVariable ["GRLIB_ammo_truck_action", -1]);
            }

        } foreach managed_trucks;

        _checked_boxes = [];

        {
            _next_box = _x;
            if (!(_next_box in managed_boxes) && ( isNull  attachedTo _next_box )) then {
                _b_action_id1 = _next_box addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_LOAD_BOX" + "</t>",{[_this select 0] call do_load_box;},"",-501,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 5) && (isNull objectParent player)"];
                _b_action_id2 = _next_box addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_STORE_CRATE" + "</t>",{[(_this select 0), (nearestObjects [player,KPLIB_storageBuildings,20]) select 0,true] call KPLIB_fnc_crateToStorage;},"",-502,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 5) && (isNull objectParent player)"];
                _b_action_id3 = _next_box addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_CRATE_VALUE" + "</t>",{[_this select 0] call KPLIB_fnc_checkCrateValue;uiSleep 3; hint "";},"",-503,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 5) && (isNull objectParent player)"];
                _b_action_id4 = _next_box addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_CRATE_PUSH" + "</t>",{(_this select 0) setPos ((_this select 0) getPos [1, (player getDir (_this select 0))]);},"",-504,true,false,"","build_confirmed isEqualTo 0 && (_this distance _target < 5) && (isNull objectParent player)"];
                _next_box setVariable ["GRLIB_ammo_box_action", _b_action_id1, false];
                _next_box setVariable ["KP_crate_store_action", _b_action_id2, false];
                _next_box setVariable ["KP_crate_value_action", _b_action_id3, false];
                _next_box setVariable ["KP_crate_push_action", _b_action_id4, false];
                managed_boxes pushback _next_box;
            };

            _checked_boxes pushback _next_box;
        } foreach _nearammoboxes;

        {
            _next_box = _x;
            if (!(_next_box in managed_boxes) || !( isNull  attachedTo _next_box )) then {
                managed_boxes = managed_boxes - [_next_box];
                _next_box removeAction (_next_box getVariable ["GRLIB_ammo_box_action", -1]);
                _next_box removeAction (_next_box getVariable ["KP_crate_store_action", -1]);
                _next_box removeAction (_next_box getVariable ["KP_crate_value_action", -1]);
                _next_box removeAction (_next_box getVariable ["KP_crate_push_action", -1]);
            }
        } foreach managed_boxes;

        _checked_areas = [];

        {
            _next_area = _x;
            _area_load = count (attachedObjects _x);

            if (!(_next_area in managed_areas) && (_area_load > 0)) then {
                    _action_id = _next_area addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_UNSTORE_SUPPLY" + "</t>",{[KP_liberation_supply_crate, (_this select 0), true] call KPLIB_fnc_crateFromStorage;},"",-504,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 12) && (isNull objectParent player)"];
                    _next_area setVariable ["KP_supply_unstore_action", _action_id, false];
                    _action_id2 = _next_area addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_UNSTORE_AMMO" + "</t>",{[KP_liberation_ammo_crate, (_this select 0), true] call KPLIB_fnc_crateFromStorage;},"",-505,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 12) && (isNull objectParent player)"];
                    _next_area setVariable ["KP_ammo_unstore_action", _action_id2, false];
                    _action_id3 = _next_area addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_UNSTORE_FUEL" + "</t>",{[KP_liberation_fuel_crate, (_this select 0), true] call KPLIB_fnc_crateFromStorage;},"",-506,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 12) && (isNull objectParent player)"];
                    _next_area setVariable ["KP_fuel_unstore_action", _action_id3, false];
                    // Removed Stack and Sort due to duplication exploit
                    // _action_id4 = _next_area addAction ["<t color='#FFFF00'>" + localize "STR_ACTION_SORT_STORAGE" + "</t>",{[(_this select 0)] call KPLIB_fnc_sortStorage;},"",-507,true,true,"","build_confirmed isEqualTo 0 && (_this distance _target < 12) && (isNull objectParent player)"];
                    // _next_area setVariable ["KP_storage_sort_action", _action_id4, false];
                    managed_areas pushback _next_area;
            };

            if ((_next_area in managed_areas) && _area_load isEqualTo 0) then {
                _next_area removeAction (_next_area getVariable ["KP_supply_unstore_action", -1]);
                _next_area removeAction (_next_area getVariable ["KP_ammo_unstore_action", -1]);
                _next_area removeAction (_next_area getVariable ["KP_fuel_unstore_action", -1]);
                _next_area removeAction (_next_area getVariable ["KP_storage_sort_action", -1]);
                managed_areas = managed_areas - [_next_area];
            };

            _checked_areas pushback _next_area;

        } foreach _nearstorageareas;

        {
            _next_area = _x;
            if (!(_next_area in _checked_areas)) then {
                managed_areas = managed_areas - [_next_area];
                _next_area removeAction (_next_area getVariable ["KP_supply_unstore_action", -1]);
                _next_area removeAction (_next_area getVariable ["KP_ammo_unstore_action", -1]);
                _next_area removeAction (_next_area getVariable ["KP_fuel_unstore_action", -1]);
                _next_area removeAction (_next_area getVariable ["KP_storage_sort_action", -1]);
            }

        } foreach managed_areas;

    };

    }, 3, []

] call CBA_fnc_addPerFrameHandler;
