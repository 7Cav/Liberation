waitUntil {!isNil "save_is_loaded"};
waitUntil {save_is_loaded};

[
    {
        
        recalculate_sectors = true;
        sectors_timer = true;
    
    }, 60, []

] call CBA_fnc_addPerFrameHandler;