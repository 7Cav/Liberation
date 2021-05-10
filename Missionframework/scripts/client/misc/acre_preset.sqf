//Set default radio to PRC-77
["ACRE_PRC77"] call acre_api_fnc_setItemRadioReplacement;

/*
 * Below, we simply name all the channels for each radio, to matching names. This will make the radios
 * in game (and in the popup hint) show the NAME of the channel they are speaking on.
 * Next, we rename the first 6 channels on each radios preset. The field names are different for each
 * radio type because they are dependent of the radio's programming and configuration. This was done
 * in ACRE2 because the actual field names match the technical specifications of how these radios
 * internally handle their data.
 *
 * Although the names are different, they serve the same purpose. "name", "description" and "label" are
 * the 3 different ways the 148, 152 and 117 reference their internal channel naming schemes.
 */

["ACRE_PRC152", "default", 1, "description", "GUNSLINGER"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 2, "description", "CTAF"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 3, "description", "VIKING"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 4, "description", "UNUSED"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 5, "description", "BANSHEE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 6, "description", "SABRE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 7, "description", "BANDIT"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 8, "description", "MISFIT"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 9, "description", "UNUSED"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 10, "description", "IDF-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 11, "description", "IDF-2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 12, "description", "CAS-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 13, "description", "CAS-2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 14, "description", "TRANSPORT-AIR"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 15, "description", "ATLAS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 16, "description", "FARP"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 17, "description", "CONVOY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 18, "description", "MISSION-CONTROL"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 19, "description", "CAG"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 20, "description", "COMMAND"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC148", "default", 1, "label", "GUNSLINGER"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 2, "label", "CTAF"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 3, "label", "VIKING"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 4, "label", "UNUSED"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 5, "label", "BANSHEE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 6, "label", "SABRE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 7, "label", "BANDIT"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 8, "label", "MISFIT"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 9, "label", "UNUSED"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 10, "label", "IDF-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 11, "label", "IDF-2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 12, "label", "CAS-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 13, "label", "CAS-2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 14, "label", "TRANSPORT-AIR"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 15, "label", "ATLAS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 16, "label", "FARP"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 17, "label", "CONVOY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 18, "label", "MISSION-CONTROL"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 19, "label", "CAG"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 20, "label", "COMMAND"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC117F", "default", 1, "name", "GUNSLINGER"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 2, "name", "CTAF"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 3, "name", "VIKING"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 4, "name", "UNUSED"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 5, "name", "BANSHEE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 6, "name", "SABRE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 7, "name", "BANDIT"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 8, "name", "MISFIT"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 9, "name", "UNUSED"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 10, "name", "IDF-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 11, "name", "IDF-2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 12, "name", "CAS-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 13, "name", "CAS-2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 14, "name", "TRANSPORT-AIR"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 15, "name", "ATLAS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 16, "name", "FARP"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 17, "name", "CONVOY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 18, "name", "MISSION-CONTROL"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 19, "name", "CAG"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 20, "name", "COMMAND"] call acre_api_fnc_setPresetChannelField;
