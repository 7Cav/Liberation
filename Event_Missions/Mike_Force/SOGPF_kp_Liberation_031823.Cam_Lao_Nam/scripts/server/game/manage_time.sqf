[
    {

        if (GRLIB_shorter_nights && (daytime > 18 || daytime < 6)) then {
            if (worldName isEqualTo "Cam_Lao_Nam") then {
                setTimeMultiplier (GRLIB_time_factor * 120);
            } else {
                setTimeMultiplier (GRLIB_time_factor * 4);
            }
        } else {
            setTimeMultiplier GRLIB_time_factor;
        };

    }, 60, []

] call CBA_fnc_addPerFrameHandler;