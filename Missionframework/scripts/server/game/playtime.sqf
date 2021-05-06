waitUntil { !isNil "save_is_loaded" };
waitUntil { save_is_loaded };

_handle = [
    {
        stats_playtime = stats_playtime + 1;
    }, 1, []] call CBA_fnc_addPerFrameHandler;
