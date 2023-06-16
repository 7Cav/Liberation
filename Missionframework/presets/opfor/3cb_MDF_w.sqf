/*
    ION PMC - Desert - Western Weaponry

    Needed Mods:
    - 3CB

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_MDF_O_OFF";                               // Officer
opfor_squad_leader = "UK3CB_MDF_O_SL";                           // Squad Leader
opfor_team_leader = "UK3CB_MDF_O_TL";                            // Team Leader
opfor_sentry = "UK3CB_MDF_O_RIF_1";                              // Rifleman (Lite)
opfor_rifleman = "UK3CB_MDF_O_RIF_1";                            // Rifleman
opfor_rpg = "UK3CB_MDF_O_LAT";                                   // Rifleman (LAT)
opfor_grenadier = "UK3CB_MDF_O_GL";                              // Grenadier
opfor_machinegunner = "UK3CB_MDF_O_AR";                          // Autorifleman
opfor_heavygunner = "UK3CB_MDF_O_MG";                            // Heavy Gunner
opfor_marksman = "UK3CB_MDF_O_MK";                               // Marksman
opfor_sharpshooter = "UK3CB_MDF_O_SPOT";                           // Sharpshooter
opfor_sniper = "UK3CB_MDF_O_SNI";                                // Sniper
opfor_at = "UK3CB_MDF_O_AT";                                     // AT Specialist
opfor_aa = "UK3CB_MDF_O_AA";                                     // AA Specialist
opfor_medic = "UK3CB_MDF_O_MD";                                  // Combat Life Saver
opfor_engineer = "UK3CB_MDF_O_ENG";                              // Engineer
opfor_paratrooper = "UK3CB_MDF_O_SF_RIF_2";                          // Paratrooper'
opfor_crew_ground = "UK3CB_MDF_O_CREW";                          // Crewman
opfor_crew_air = "UK3CB_MDF_O_HELI_NAVY_CREW";                        // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "UK3CB_MDF_O_M1151";                              // M1220
opfor_mrap_armed = "UK3CB_MDF_O_M1151_OGPK_M240";                     // M1220 W/ M2
opfor_transport_helo = "UK3CB_MDF_O_Bell412_Utility";                     // Mi-8MT (Cargo)
opfor_transport_truck = "UK3CB_MDF_O_MTVR_Closed";               // M1083A1P2 W/ M2
opfor_ammobox_transport = "UK3CB_MDF_O_MTVR_Open";                       // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_MDF_O_MTVR_Refuel";                              // Ural-4320 Fuel
opfor_ammo_truck = "UK3CB_MDF_O_MTVR_Reammo";                                // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // FUEL TANK
opfor_ammo_container = "VirtualReammoBox_camonet_F";                    // AMMO CRATES
opfor_flag = "Flag_MDF_NAVY";                                                // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_MDF_O_RIF_1",                                                // Rifleman
    "UK3CB_MDF_O_RIF_1",                                                   // Autorifleman
    "UK3CB_MDF_O_AR",                                                // Rifleman
    "UK3CB_MDF_O_LAT",                                                  // Rifleman (AT)
    "UK3CB_MDF_O_MG",                                                   // Autorifleman
    "UK3CB_MDF_O_MK",                                                   // Marksman
    "UK3CB_MDF_O_MD",                                                   // Medic
    "UK3CB_MDF_O_ENG",                                                   // Engineer
    "UK3CB_MDF_O_SL"                                                // Field Instructor
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "UK3CB_MDF_O_MB4WD_LMG",                                                // M1043A2 (M2)
    "UK3CB_MDF_O_Offroad_HMG"                                   // M1151A1 (M2 CROWS)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "UK3CB_MDF_O_M1025_M2",
    "UK3CB_MDF_O_M1025_M2",                                                // M1043A2 (M2)
    "UK3CB_MDF_O_M113_M2",
    "UK3CB_MDF_O_M113_M2",                                                // M1043A2 (M2)
    "UK3CB_MDF_O_Warrior",
    "UK3CB_MDF_O_Warrior",                                                    // M966A1 (TOW)
    "UK3CB_MDF_O_M60A3",
    "UK3CB_MDF_O_M60A3"                                           // Stinger Turret
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "UK3CB_MDF_O_M1025_M2",
    "UK3CB_MDF_O_M1025_M2",                                                // M1043A2 (M2)
    "UK3CB_MDF_O_M113_M2",                                                // M1043A2 (M2)
    "UK3CB_MDF_O_Warrior",                                                    // M966A1 (TOW)
    "UK3CB_MDF_O_M60A3"                                            
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [                                              
    "UK3CB_MDF_O_M1025_M2",
    "UK3CB_MDF_O_M1025_M2",                                                
    "UK3CB_MDF_O_M113_M2",
    "UK3CB_MDF_O_UH1H_GUNSHIP",
    "UK3CB_MDF_O_Bell412_Utility",
    "UK3CB_MDF_O_Warrior",                                                    // M966A1 (TOW)
    "UK3CB_MDF_O_M60A3",
    "UK3CB_MDF_O_M60A3" 
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "UK3CB_MDF_O_M1025_M2",
    "UK3CB_MDF_O_M1025_M2",                                                
    "UK3CB_MDF_O_M113_M2",
    "UK3CB_MDF_O_M1025_M2",
    "UK3CB_MDF_O_M1025_M2",                                                
    "UK3CB_MDF_O_M113_M2",
    "UK3CB_MDF_O_Bell412_Utility"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "UK3CB_MDF_O_Bell412_Utility",
    "UK3CB_MDF_O_M113_M2",
    "UK3CB_MDF_O_UH1H_GUNSHIP"                                               
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "UK3CB_MDF_O_UH1H_GUNSHIP",
    "UK3CB_MDF_O_Bell412_Utility"                                                 
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_MDF_O_Mystere_AA1"
];
