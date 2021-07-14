if ( GRLIB_permissions_param ) then {

    waitUntil { !(isNil "GRLIB_permissions") };

    [
        {
            params ["_args"];
            _args params [];

            if ( count GRLIB_permissions isEqualTo 0 ) then {

                hintSilent localize "STR_PERMISSION_WARNING";
                GRLIB_permissions = [["Default","Default",[true,true,true,true,false,true]]];
		        publicVariable "GRLIB_permissions";

            }

        }, 5, []

    ] call CBA_fnc_addPerFrameHandler;

};