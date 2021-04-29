if ( GRLIB_permissions_param ) then {

    waitUntil { !(isNil "GRLIB_permissions") };

    sleep 5;

    while { count GRLIB_permissions isEqualTo 0 } do {
        hintSilent localize "STR_PERMISSION_WARNING";
        GRLIB_permissions = [["Default","Default",[true,true,true,true,false,true]]];
		publicVariable "GRLIB_permissions";
        sleep 5;
    };

    hintSilent "";

};
