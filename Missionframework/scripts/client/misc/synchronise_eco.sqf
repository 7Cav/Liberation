one_eco_done = false;
waitUntil {!isNil "sync_eco"};

[
    {
        params ["_args"];
        _args params [];

        if ((count sync_eco) > 0) then {

            KP_liberation_production = sync_eco select 0;
            KP_liberation_logistics = sync_eco select 1;
            KP_liberation_production_markers = sync_eco select 2;
            sync_eco = [];
            one_eco_done = true;

        }

    }, 1, []

] call CBA_fnc_addPerFrameHandler;