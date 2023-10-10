/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_CW_SOV_O_LATE_VDV_FIELD_OFF";                                          // Officer
opfor_squad_leader = "UK3CB_CW_SOV_O_LATE_VDV_SL";                                  // Squad Leader
opfor_team_leader = "UK3CB_CW_SOV_O_LATE_VDV_TL";                                   // Team Leader
opfor_sentry = "UK3CB_CW_SOV_O_LATE_VDV_RIF_1";                                      // Rifleman (Lite)
opfor_rifleman = "UK3CB_CW_SOV_O_LATE_VDV_LAT";                                         // Rifleman
opfor_rpg = "UK3CB_CW_SOV_O_LATE_VDV_LAT";                                          // Rifleman (LAT)
opfor_grenadier = "UK3CB_CW_SOV_O_LATE_VDV_GL";                                     // Grenadier
opfor_machinegunner = "UK3CB_CW_SOV_O_LATE_VDV_AR";                                 // Autorifleman
opfor_heavygunner = "UK3CB_CW_SOV_O_LATE_VDV_MG";                                  // Heavy Gunner
opfor_marksman = "UK3CB_CW_SOV_O_LATE_VDV_MK";                                       // Marksman
opfor_sharpshooter = "UK3CB_CW_SOV_O_LATE_VDV_MK";                                // Sharpshooter
opfor_sniper = "UK3CB_CW_SOV_O_LATE_VDV_MK";                                            // Sniper
opfor_at = "UK3CB_CW_SOV_O_LATE_VDV_AT";                                            // AT Specialist
opfor_aa = "UK3CB_CW_SOV_O_LATE_VDV_AA";                                            // AA Specialist
opfor_medic = "UK3CB_CW_SOV_O_LATE_VDV_MD";                                              // Combat Life Saver
opfor_engineer = "UK3CB_CW_SOV_O_LATE_VDV_ENG";                                        // Engineer
opfor_paratrooper = "UK3CB_CW_SOV_O_LATE_SF_LAT";                                   // Paratrooper
opfor_crew_ground = "UK3CB_CW_SOV_O_LATE_VDV_CREW";                                         // Crewman
opfor_crew_air = "UK3CB_CW_SOV_O_LATE_VDV_CREW";                                           // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "UK3CB_CW_SOV_O_LATE_BRDM2_HQ";                                             // Ifrit
opfor_mrap_armed = "UK3CB_CW_SOV_O_LATE_BRDM2";                                   // Ifrit (HMG)
opfor_transport_helo = "UK3CB_CW_SOV_O_LATE_Mi8";                   // Mi-290 Taru (Bench)
opfor_transport_truck = "UK3CB_CW_SOV_O_LATE_VDV_Ural";                         // Tempest Transport (Covered)
opfor_ammobox_transport = "UK3CB_CW_SOV_O_LATE_VDV_Ural_Open";                     // Tempest Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_CW_SOV_O_LATE_VDV_Ural_Fuel";                                 // Tempest Fuel
opfor_ammo_truck = "UK3CB_CW_SOV_O_LATE_VDV_Ural_Ammo";                                 // Tempest Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "Flag_CW_SOV";                                             // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_CW_SOV_O_LATE_VDV_LAT",                                                     // Rifleman (Lite)
    "UK3CB_CW_SOV_O_LATE_VDV_LAT",                                                     // Rifleman (Lite)
    "UK3CB_CW_SOV_O_LATE_VDV_LAT",                                                     // Rifleman
    "UK3CB_CW_SOV_O_LATE_VDV_AA",                                                     // Rifleman (AA)
    "UK3CB_CW_SOV_O_LATE_VDV_AT",                                                 // Rifleman (AT)
    "UK3CB_CW_SOV_O_LATE_VDV_AR",                                                  // Autorifleman
    "UK3CB_CW_SOV_O_LATE_VDV_MK",                                                   // Marksman
    "UK3CB_CW_SOV_O_LATE_VDV_MD",                                               // Medic
    "UK3CB_CW_SOV_O_LATE_VDV_ENG"                                                    // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "UK3CB_ARD_O_UAZ_MG"                                                  // Qilin (armed)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "UK3CB_CW_SOV_O_LATE_UAZ_MG",                                                  // Ifrit (HMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_AGS30",                                                  // Ifrit (GMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_AGS30",                                                  // Ifrit (GMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_SPG9",                                                    // Qilin (AT)
    "UK3CB_CW_SOV_O_LATE_BTR70",                                        // BTR-K Kamysh
    "UK3CB_CW_SOV_O_LATE_BTR80a",                                        // BTR-K Kamysh
    "UK3CB_CW_SOV_O_LATE_VDV_Ural_Zu23",                                            // ZSU-39 Tigris
    "UK3CB_CW_SOV_O_LATE_ZsuTank",                                            // ZSU-39 Tigris
    "UK3CB_CW_SOV_O_LATE_MTLB_BMP",                                                // T-100 Varsuk
    "UK3CB_CW_SOV_O_LATE_BMP2K",                                                // T-100 Varsuk
    "UK3CB_CW_SOV_O_LATE_T72B",                                                // T-140 Angara
    "UK3CB_CW_SOV_O_LATE_T80U"                                                // T-140K Angara
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "UK3CB_CW_SOV_O_LATE_UAZ_MG",                                                  // Ifrit (HMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_MG",                                                  // Ifrit (HMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_SPG9",                                                    // Qilin (AT)
    "UK3CB_CW_SOV_O_LATE_BTR70",                                          // MSE-3 Marid
    "UK3CB_CW_SOV_O_LATE_BTR80a"                                         // BTR-K Kamysh
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "UK3CB_CW_SOV_O_LATE_UAZ_MG",                                                  // Ifrit (HMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_AGS30",                                                  // Ifrit (GMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_AGS30",                                                  // Ifrit (GMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_SPG9",                                                    // Qilin (AT)
    "UK3CB_CW_SOV_O_LATE_VDV_Ural",                                           // Tempest Transport
    "UK3CB_CW_SOV_O_LATE_VDV_Ural",                                             // Tempest Transport (Covered)
    "UK3CB_CW_SOV_O_LATE_BTR70",                                        // BTR-K Kamysh
    "UK3CB_CW_SOV_O_LATE_BTR80a",                                        // BTR-K Kamysh
    "UK3CB_CW_SOV_O_LATE_VDV_Ural_Zu23",                                            // ZSU-39 Tigris
    "UK3CB_CW_SOV_O_LATE_ZsuTank",                                            // ZSU-39 Tigris
    "UK3CB_CW_SOV_O_LATE_MTLB_BMP",                                                // T-100 Varsuk
    "UK3CB_CW_SOV_O_LATE_BMP2K",                                                // T-100 Varsuk
    "UK3CB_CW_SOV_O_LATE_T72B",                                                // T-140 Angara
    "UK3CB_CW_SOV_O_LATE_T80U",                                               // T-140K Angara
    "UK3CB_CW_SOV_O_LATE_Mi8AMTSh",                                 // Po-30 Orca (Armed)
    "UK3CB_CW_SOV_O_LATE_Mi8AMTSh",                                 // Po-30 Orca (Armed)
    "UK3CB_CW_SOV_O_LATE_Mi8",                                      // Mi-290 Taru (Bench)
    "UK3CB_CW_SOV_O_LATE_Mi_24V"                                 // Mi-48 Kajman
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "UK3CB_CW_SOV_O_LATE_UAZ_MG",                                                  // Ifrit (HMG)
    "UK3CB_CW_SOV_O_LATE_UAZ_MG",                                                  // Ifrit (HMG)
    "UK3CB_CW_SOV_O_LATE_VDV_Ural",                                           // Tempest Transport
    "UK3CB_CW_SOV_O_LATE_BTR70",                                          // MSE-3 Marid
    "UK3CB_CW_SOV_O_LATE_BTR70",                                        // BTR-K Kamysh
    "UK3CB_CW_SOV_O_LATE_VDV_Ural_Zu23",                                            // ZSU-39 Tigris
    "UK3CB_CW_SOV_O_LATE_Mi8AMTSh",                                 // Po-30 Orca (Armed)
    "UK3CB_CW_SOV_O_LATE_Mi8"                                       // Mi-290 Taru (Bench)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "UK3CB_CW_SOV_O_LATE_VDV_Ural",                                           // Tempest Transport
    "UK3CB_CW_SOV_O_LATE_VDV_Ural",                                             // Tempest Transport (Covered)
    "UK3CB_CW_SOV_O_LATE_BTR70",                                          // MSE-3 Marid
    "UK3CB_CW_SOV_O_LATE_Mi8",                                      // Mi-290 Taru (Bench)
    "UK3CB_CW_SOV_O_LATE_Mi8AMTSh"                                  // Po-30 Orca (Armed)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "UK3CB_CW_SOV_O_LATE_Mi8",                                      // Mi-290 Taru (Bench)
    "UK3CB_CW_SOV_O_LATE_Mi8AMTSh",                                 // Po-30 Orca (Armed)
    "UK3CB_CW_SOV_O_LATE_Mi_24V"                                 // Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_CW_SOV_O_LATE_Su25SM_CAS",                                  // To-199 Neophron (CAS)
    "UK3CB_CW_SOV_O_LATE_MIG29S",                                    // To-201 Shikra
	"RHS_T50_vvs_generic_ext"                                              // To-201 Shikra (CAP)
];
