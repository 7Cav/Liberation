/*
    ION PMC - Desert - Western Weaponry

    Needed Mods:
    - 3CB

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_CHD_W_O_OFF";                               // Officer
opfor_squad_leader = "UK3CB_CHD_W_O_SL";                           // Squad Leader
opfor_team_leader = "UK3CB_CHD_W_O_TL";                            // Team Leader
opfor_sentry = "UK3CB_CHD_W_O_RIF_2";                              // Rifleman (Lite)
opfor_rifleman = "UK3CB_CHD_W_O_RIF_1";                            // Rifleman
opfor_rpg = "UK3CB_CHD_W_O_LAT";                                   // Rifleman (LAT)
opfor_grenadier = "UK3CB_CHD_W_O_GL";                              // Grenadier
opfor_machinegunner = "UK3CB_CHD_W_O_MG";                          // Autorifleman
opfor_heavygunner = "UK3CB_CHD_W_O_AR";                            // Heavy Gunner
opfor_marksman = "UK3CB_CHD_W_O_MK";                               // Marksman
opfor_sharpshooter = "UK3CB_CHD_W_O_SF_SPOT";                           // Sharpshooter
opfor_sniper = "UK3CB_CHD_W_O_SF_SNI";                                // Sniper
opfor_at = "UK3CB_CHD_W_O_AT";                                     // AT Specialist
opfor_aa = "UK3CB_CHD_W_O_AA";                                     // AA Specialist
opfor_medic = "UK3CB_CHD_W_O_MD";                                  // Combat Life Saver
opfor_engineer = "UK3CB_CHD_W_O_SF_ENG";                              // Engineer
opfor_paratrooper = "UK3CB_CHD_W_O_SF_TL";                          // Paratrooper'
opfor_crew_ground = "UK3CB_CHD_W_O_CREW";                          // Crewman
opfor_crew_air = "UK3CB_CHD_W_O_HELI_CREW";                        // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "UK3CB_CHD_W_O_BRDM2";                              // M1220
opfor_mrap_armed = "UK3CB_CHD_W_O_BRDM2_HQ";                     // M1220 W/ M2
opfor_transport_helo = "RHS_Mi8mt_vdv";                     // Mi-8MT (Cargo)
opfor_transport_truck = "UK3CB_CHD_W_O_Ural";               // M1083A1P2 W/ M2
opfor_ammobox_transport = "RHS_Ural_VDV_01";                       // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "RHS_Ural_Fuel_VDV_01";                              // Ural-4320 Fuel
opfor_ammo_truck = "RHS_Ural_Ammo_VDV_01";                                // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // FUEL TANK
opfor_ammo_container = "VirtualReammoBox_camonet_F";                    // AMMO CRATES
opfor_flag = "Flag_CHD_Red_Star";                                                // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_CHD_W_O_RIF_1",                                                // Rifleman
    "UK3CB_CHD_W_O_RIF_1",                                                   // Autorifleman
    "UK3CB_CHD_W_O_AR",                                                // Rifleman
    "UK3CB_CHD_W_O_LAT",                                                  // Rifleman (AT)
    "UK3CB_CHD_W_O_MG",                                                   // Autorifleman
    "UK3CB_CHD_W_O_MK",                                                   // Marksman
    "UK3CB_CHD_W_O_MD",                                                   // Medic
    "UK3CB_CHD_W_O_ENG",                                                   // Engineer
    "UK3CB_CHD_W_O_SL"                                                // Field Instructor
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "UK3CB_CHD_W_O_Pickup_DSHKM",                                                // M1043A2 (M2)
    "UK3CB_CHD_W_O_UAZ_MG"                                   // M1151A1 (M2 CROWS)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "UK3CB_CHD_W_O_Pickup_DSHKM",                                                // M1043A2 (M2)
    "UK3CB_CHD_W_O_UAZ_MG",                                                // M1043A2 (M2)
    "UK3CB_CHD_W_O_BRDM2",                                                    // M966A1 (TOW)
    "UK3CB_CHD_W_O_LR_SPG9",                                          // M113A3 (M240)
    "UK3CB_CHD_W_O_BTR40_MG",                                               // M113A3 (M2)
    "UK3CB_CHD_W_O_MTLB_KPVT",                                       // M1126 (M2)
    "UK3CB_CHD_W_O_BTR70",                                                      // M2A2ODS
    "UK3CB_CHD_W_O_BRM1K",
    "UK3CB_CHD_W_O_T34"                                            // Stinger Turret
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "UK3CB_CHD_W_O_BRDM2",
    "UK3CB_CHD_W_O_BRDM2",
    "UK3CB_CHD_W_O_Pickup_DSHKM",                                                // M1043A2 (M2)
    "UK3CB_CHD_W_O_UAZ_MG",                                                // M1043A2 (M2)
    "UK3CB_CHD_W_O_BRDM2",                                                    // M966A1 (TOW)
    "UK3CB_CHD_W_O_LR_SPG9",                                          // M113A3 (M240)
    "UK3CB_CHD_W_O_BTR40_MG",                                               // M113A3 (M2)
    "UK3CB_CHD_W_O_MTLB_KPVT",                                       // M1126 (M2)
    "UK3CB_CHD_W_O_BTR70",                                                      // M2A2ODS
    "UK3CB_CHD_W_O_BRM1K",
    "UK3CB_CHD_W_O_T34"                                           
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [                                              
    "UK3CB_CHD_W_O_BMP2",                                                    
    "UK3CB_CHD_W_O_BMP2",                                          
    "UK3CB_CHD_W_O_T72BA",                                               
    "UK3CB_CHD_W_O_T72BA",                                       
    "UK3CB_CHD_W_O_T34",                                                      
    "UK3CB_CHD_W_O_T34",                                            
    "UK3CB_CHD_W_O_T34",
    "UK3CB_CHD_W_O_Zil131_Covered",
    "UK3CB_CHD_W_O_Zil131_Covered",
    "UK3CB_CHD_W_O_Zil131_Covered"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
                                       
    "UK3CB_CHD_W_O_T34",                                                      
    "UK3CB_CHD_W_O_T34",                                            
    "UK3CB_CHD_W_O_T34",
    "UK3CB_CHD_W_O_Zil131_Covered",
    "UK3CB_CHD_W_O_Zil131_Covered",
    "UK3CB_CHD_W_O_Zil131_Covered"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "UK3CB_CHD_W_O_Zil131_Covered"                                               
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "RHS_Mi8mt_vdv"                                                  
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_CHD_W_O_Su25SM_CAS"
];
