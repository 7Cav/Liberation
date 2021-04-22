/*
    File: KPLIB_whitelists.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-07-06
    Last Update: 2020-07-06
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Arrays of steam IDs for granting access to several features/mechanics.
        All IDs have to be added as string.

        To retrieve steam IDs this site might be handy: https://steamid.io/

    Example:
        KPLIB_whitelist_cmdrSlot = [
            "123445245",
            "235245345",
            "456454443"
        ];
*/
KPLIB_whitelist_cmdrSlot = [];
#if __has_include("../serverscripts/zeus/guids.sqf")
// use existing guids file on server

    if (_x in zeusGUIDs) then {
        KPLIB_whitelist_cmdrSlot pushback _x;
    };

#else
// Access to the commander slot.
KPLIB_whitelist_cmdrSlot = [
    "76561197963459537", // Sweetwater.I S6 1IC
    "76561197997124640", // Liber.N S3/S6
    "76561198007260563", // Tharen.R 1BN CO
    "76561198102939824"  // Geki.T S3
];

// Access the commander actions (rights, production, etc.), even if the corresponding player is not in the commander slot.
KPLIB_whitelist_cmdrActions = [
    "76561197963459537", // Sweetwater.I S6 1IC
    "76561197997124640", // Liber.N S3/S6
    "76561198007260563", // Tharen.R 1BN CO
    "76561198102939824"  // Geki.T S3
];

// Whitelist for BI support framework access.
KPLIB_whitelist_supportModule = [
    "76561197963459537", // Sweetwater.I S6 1IC
    "76561197997124640", // Liber.N S3/S6
    "76561198007260563", // Tharen.R 1BN CO
    "76561198102939824"  // Geki.T S3
];
#endif