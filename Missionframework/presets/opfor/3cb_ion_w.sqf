/*
    ION PMC - Woodland - Western Weaponry

    Needed Mods:
    - 3CB

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_ION_O_Woodland_CEO";                               // Officer
opfor_squad_leader = "UK3CB_ION_O_Woodland_TL";                           // Squad Leader
opfor_team_leader = "UK3CB_ION_O_Woodland_TL";                            // Team Leader
opfor_sentry = "UK3CB_ION_O_Woodland_RIF_2";                              // Rifleman (Lite)
opfor_rifleman = "UK3CB_ION_O_Woodland_RIF_1";                            // Rifleman
opfor_rpg = "UK3CB_ION_O_Woodland_LAT";                                   // Rifleman (LAT)
opfor_grenadier = "UK3CB_ION_O_Woodland_GL";                              // Grenadier
opfor_machinegunner = "UK3CB_ION_O_Woodland_AR";                          // Autorifleman
opfor_heavygunner = "UK3CB_ION_O_Woodland_MG";                            // Heavy Gunner
opfor_marksman = "UK3CB_ION_O_Woodland_MK";                               // Marksman
opfor_sharpshooter = "UK3CB_ION_O_Woodland_MK";                           // Sharpshooter
opfor_sniper = "UK3CB_ION_O_Woodland_SNI";                                // Sniper
opfor_at = "UK3CB_ION_O_Woodland_AT";                                     // AT Specialist
opfor_aa = "UK3CB_ION_O_Woodland_AA";                                     // AA Specialist
opfor_medic = "UK3CB_ION_O_Woodland_MD";                                  // Combat Life Saver
opfor_engineer = "UK3CB_ION_O_Woodland_ENG";                              // Engineer
opfor_paratrooper = "UK3CB_ION_O_Urban_RIF_2";                          // Paratrooper'
opfor_crew_ground = "UK3CB_ION_O_Woodland_CREW";                          // Crewman
opfor_crew_air = "UK3CB_ION_O_Woodland_HELI_PILOT";                        // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "UK3CB_ION_O_Woodland_Offroad";                              // M1220
opfor_mrap_armed = "UK3CB_ION_O_Woodland_Offroad_M2";                     // M1220 W/ M2
opfor_transport_helo = "UK3CB_ION_O_Woodland_Merlin";                     // Mi-8MT (Cargo)
opfor_transport_truck = "UK3CB_ION_O_Woodland_T810_Closed";               // M1083A1P2 W/ M2
opfor_ammobox_transport = "UK3CB_ION_O_Woodland_T810_Closed";                       // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_ION_O_Woodland_T810_Refuel";                              // Ural-4320 Fuel
opfor_ammo_truck = "UK3CB_ION_O_Woodland_T810_Reammo";                                // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // FUEL TANK
opfor_ammo_container = "VirtualReammoBox_camonet_F";                    // AMMO CRATES
opfor_flag = "Flag_ION_F";                                                // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_ION_O_Woodland_RIF_2",                                                // Rifleman
    "UK3CB_ION_O_Woodland_RIF_1",                                                   // Autorifleman
    "UK3CB_ION_O_Woodland_AR",                                                // Rifleman
    "UK3CB_ION_O_Woodland_LAT",                                                  // Rifleman (AT)
    "UK3CB_ION_O_Woodland_MG",                                                   // Autorifleman
    "UK3CB_ION_O_Woodland_MK",                                                   // Marksman
    "UK3CB_ION_O_Woodland_MD",                                                   // Medic
    "UK3CB_ION_O_Woodland_ENG",                                                   // Engineer
    "UK3CB_ION_O_Woodland_JNR_OFF"                                                // Field Instructor
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "UK3CB_ION_O_Woodland_Hilux_M2",                                                // M1043A2 (M2)
    "UK3CB_ION_O_Woodland_M1025_M2",                                                // M1043A2 (M2)
    "UK3CB_ION_O_Woodland_MB4WD_LMG"                                    // M1151A1 (M2 CROWS)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "UK3CB_ION_O_Woodland_M1025_M2",                                                // M1043A2 (M2)
    "UK3CB_ION_O_Woodland_M1025_M2",                                                // M1043A2 (M2)
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                                    // M966A1 (TOW)
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                          // M113A3 (M240)
    "UK3CB_ION_O_Woodland_M113_M240",                                               // M113A3 (M2)
    "UK3CB_ION_O_Woodland_M113_M2",                                       // M1126 (M2)
    "UK3CB_ION_O_Woodland_M1025_TOW",                                                      // M2A2ODS
    "UK3CB_ION_O_Woodland_SUV_Armed"                                            // Stinger Turret
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "UK3CB_ION_O_Woodland_M1025_M2",                                                // M1043A2 (M2)
    "UK3CB_ION_O_Woodland_M1025_M2",                                                // M1043A2 (M2)
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                                    // M966A1 (TOW)
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                          // M113A3 (M240)
    "UK3CB_ION_O_Woodland_M113_M240",                                               
    "UK3CB_ION_O_Woodland_M113_M2",                                       
    "UK3CB_ION_O_Woodland_M1025_TOW",                                                      
    "RHS_M2A3_wd",
	"rhsusf_m1a1aim_tuski_wd",
	"rhsgref_cdf_t80uk_tv",
	"UK3CB_ION_O_Woodland_SUV_Armed"                                            
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "UK3CB_ION_O_Woodland_M1025_M2",                                                
    "UK3CB_ION_O_Woodland_M1025_M2",                                                
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                                    
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                          
    "UK3CB_ION_O_Woodland_M113_M240",                                               
    "UK3CB_ION_O_Woodland_M113_M2",                                       
    "UK3CB_ION_O_Woodland_M1025_TOW",                                                      
    "UK3CB_ION_O_Woodland_SUV_Armed",                                            
    "UK3CB_ION_O_Woodland_MaxxPro_MK19",
    "UK3CB_ION_O_Woodland_MaxxPro_MK19",
    "UK3CB_ION_O_Woodland_MELB_AH6M_M",
    "UK3CB_ION_O_Woodland_MELB_AH6M",
    "UK3CB_ION_O_Woodland_Merlin",
    "UK3CB_ION_O_Woodland_UH1H_GUNSHIP",
    "UK3CB_ION_O_Woodland_UH1H_M240",
    "UK3CB_ION_O_Woodland_T810_Closed",
	"RHS_M2A3_wd",
	"rhsusf_m1a1aim_tuski_wd",
	"rhsgref_cdf_t80uk_tv"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "UK3CB_ION_O_Woodland_M1025_M2",                                                
    "UK3CB_ION_O_Woodland_M1025_M2",                                                
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                                    
    "UK3CB_ION_O_Woodland_MaxxPro_M2",                                          
    "UK3CB_ION_O_Woodland_M113_M240",                                               
    "UK3CB_ION_O_Woodland_M113_M2",                                       
    "UK3CB_ION_O_Woodland_M1025_TOW",                                                      
    "UK3CB_ION_O_Woodland_SUV_Armed",                                                       
    "UK3CB_ION_O_Woodland_UH1H_M240",
    "UK3CB_ION_O_Woodland_MELB_MH6M",
    "UK3CB_ION_O_Woodland_T810_Closed",
	"RHS_M2A3_wd",
	"rhsusf_m1a1aim_tuski_wd",
	"rhsgref_cdf_t80uk_tv"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "UK3CB_ION_O_Woodland_M113_M240",                                               
    "UK3CB_ION_O_Woodland_M113_M2",
    "UK3CB_ION_O_Woodland_T810_Closed",
    "UK3CB_ION_O_Woodland_UH1H_M240",
    "UK3CB_ION_O_Woodland_UH1H_GUNSHIP",
    "UK3CB_ION_O_Woodland_Merlin"
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "UK3CB_ION_O_Woodland_MELB_AH6M_M",
    "UK3CB_ION_O_Woodland_MELB_AH6M",
    "UK3CB_ION_O_Woodland_Merlin",
    "UK3CB_ION_O_Woodland_UH1H_GUNSHIP",
    "UK3CB_ION_O_Woodland_UH1H_M240",
    "UK3CB_ION_O_Woodland_MELB_MH6M"                                                  
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_ION_O_Woodland_Cessna_T41_Armed_M134",
    "UK3CB_ION_O_Woodland_Cessna_T41_Armed_M2"
];
