
// if file does not exist on server than do the following below.
// Here you can allow people to use the commander slot. It will only be enforced if you activate the related mission option.
// When editing be careful with quotes and commas

// Allowed team tags, as defined in your team's squad.xml
// This isn't very secure but efficient to whitelist a lot of people at once.
GRLIB_whitelisted_tags = [

];

// Allowed individual players based on their SteamID64. This is the most secure way to do.
// For example: "76561198016642627"
// To know that information: https://steamid.io/
GRLIB_whitelisted_steamids = [];
#if __has_include("/serverscripts/zeus/guids.sqf")
// use existing guids file on server

    if (_x in zeusGUIDs) then {
        GRLIB_whitelisted_steamids pushback _x;
    };

#else
GRLIB_whitelisted_steamids = [
	"76561197963459537", // Sweetwater.I S6 1IC
	"76561197997124640", // Liber.N S3/S6
	"76561198007260563", //	Tharen.R 1BN CO
	"76561198102939824"  // Geki.T S3 
];
#endif

// Allowed individual player names. Note that this method is not very secure contrary to SteamIDs.
// For exemple: "Zbug"
GRLIB_whitelisted_names = [

];




