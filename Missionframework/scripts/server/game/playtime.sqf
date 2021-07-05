waitUntil { !isNil "save_is_loaded" };
waitUntil { save_is_loaded };

[
    {
        stats_playtime = stats_playtime + 60;

    }, 60, []

] call CBA_fnc_addPerFrameHandler;