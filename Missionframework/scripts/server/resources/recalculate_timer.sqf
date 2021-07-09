waitUntil { !isNil "save_is_loaded" };
waitUntil {save_is_loaded};

[
    {
        
        please_recalculate = true;
    
    }, 10, []

] call CBA_fnc_addPerFrameHandler;