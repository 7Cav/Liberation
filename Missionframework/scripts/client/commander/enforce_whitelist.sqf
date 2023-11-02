scriptName "[KPLIB] Enforce Whitelist";

[] call compileFinal preprocessFileLineNumbers "whitelist.sqf";

if (!GRLIB_use_whitelist) exitWith {};

waitUntil {alive player};
sleep 1;

if (player isEqualTo ([] call KPLIB_fnc_getCommander) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in GRLIB_whitelisted_steamids) exitWith {_match = true;};
        if ((name player) in GRLIB_whitelisted_names) exitWith {_match = true;};
        if (!((squadParams player) isEqualTo []) && {(((squadParams player) select 0) select 0) in GRLIB_whitelisted_tags}) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END1";
    };
};
// add check for mission controller
if (player isEqualTo ([] call KPLIB_fnc_getMissioncontroller) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in GRLIB_whitelisted_steamids) exitWith {_match = true;};
        if ((name player) in GRLIB_whitelisted_names) exitWith {_match = true;};
        if (!((squadParams player) isEqualTo []) && {(((squadParams player) select 0) select 0) in GRLIB_whitelisted_tags}) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};

if (player isEqualTo ([] call KPLIB_fnc_getMissioncontroller1) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in GRLIB_whitelisted_steamids) exitWith {_match = true;};
        if ((name player) in GRLIB_whitelisted_names) exitWith {_match = true;};
        if (!((squadParams player) isEqualTo []) && {(((squadParams player) select 0) select 0) in GRLIB_whitelisted_tags}) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};
// add check for MP's
if (player isEqualTo ([] call KPLIB_fnc_getMilitarypolice) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in GRLIB_whitelisted_steamids) exitWith {_match = true;};
        if ((name player) in GRLIB_whitelisted_names) exitWith {_match = true;};
        if (!((squadParams player) isEqualTo []) && {(((squadParams player) select 0) select 0) in GRLIB_whitelisted_tags}) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};

if (player isEqualTo ([] call KPLIB_fnc_getMilitarypolice1) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in GRLIB_whitelisted_steamids) exitWith {_match = true;};
        if ((name player) in GRLIB_whitelisted_names) exitWith {_match = true;};
        if (!((squadParams player) isEqualTo []) && {(((squadParams player) select 0) select 0) in GRLIB_whitelisted_tags}) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};