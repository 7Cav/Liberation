/*
    Needed Mods:
    - RHS AFRF

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_TKA_O_OFF";                                  // Officer
opfor_squad_leader = "UK3CB_TKA_O_SL";                              // Squad Leader
opfor_team_leader = "UK3CB_TKA_O_TL";                               // Team Leader
opfor_sentry = "UK3CB_TKA_O_RIF_2";                                 // Rifleman (Lite)
opfor_rifleman = "UK3CB_TKA_O_RIF_1";                               // Rifleman
opfor_rpg = "UK3CB_TKA_O_LAT";                                      // Rifleman (LAT)
opfor_grenadier = "UK3CB_TKA_O_GL";                                 // Grenadier
opfor_machinegunner = "UK3CB_TKA_O_AR";                             // Autorifleman
opfor_heavygunner = "UK3CB_TKA_O_MG";                               // Heavy Gunner
opfor_marksman = "UK3CB_TKA_O_MK";                                  // Marksman
opfor_sharpshooter = "UK3CB_TKA_O_MK";                              // Sharpshooter
opfor_sniper = "UK3CB_TKA_O_SNI";                                   // Sniper
opfor_at = "UK3CB_TKA_O_AT";                                        // AT Specialist
opfor_aa = "UK3CB_TKA_O_AA";                                        // AA Specialist
opfor_medic = "UK3CB_TKA_O_MD";                                     // Combat Life Saver
opfor_engineer = "UK3CB_TKA_O_ENG";                                 // Engineer
opfor_paratrooper = "UK3CB_TKA_O_SF_RIF_1";                         // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "UK3CB_TKA_O_GAZ_Vodnik_PKT";                                    // Vodnik
opfor_mrap_armed = "UK3CB_TKA_O_GAZ_Vodnik_KVPT";                             // Vodnik (Armed)
opfor_transport_helo = "UK3CB_TKA_O_Mi8AMT";                                  // Mi-8MT (Cargo)
opfor_transport_truck = "UK3CB_TKA_O_Ural";                                   // Ural-4320 Transport (Covered)
opfor_ammobox_transport = "UK3CB_TKA_O_Ural_Open";                            // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_TKA_O_Ural_Fuel";                                   // Ural-4320 Fuel
opfor_ammo_truck = "UK3CB_TKA_O_Ural_Ammo";                                   // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";                   // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";                   // Taru Ammo Pod
opfor_flag = "Flag_TKA";                                                      // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_TKM_O_SL",                                             // Rifleman
    "UK3CB_TKM_O_TL",                                             // Rifleman
    "UK3CB_TKM_O_RIF_1",                                          // Rifleman
    "UK3CB_TKM_O_AR",                                             // AR
    "UK3CB_TKM_O_QRF_AT",                                         // AT
    "UK3CB_TKM_O_MD",                                             // Medic
    "UK3CB_TKM_O_MK",                                             // marksman
    "UK3CB_TKM_O_QRF_ENG"                                         // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "UK3CB_TKM_O_Datsun_Pickup_PKM",
	"UK3CB_TKM_O_Hilux_Dshkm",
	"UK3CB_TKM_O_LandRover_M2"                                                 
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "UK3CB_TKA_O_GAZ_Vodnik_PKT",                                                 
    "UK3CB_TKA_O_Hilux_Pkm",                                                 
    "UK3CB_TKA_O_UAZ_SPG9",                                                 
    "UK3CB_TKA_O_M113_M2",
    "UK3CB_TKA_O_T72B"                                                      
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
	"UK3CB_TKA_O_M113_M2",
	"UK3CB_TKA_O_GAZ_Vodnik_PKT",
    "UK3CB_TKA_O_T72B",                                                 
    "UK3CB_TKA_O_LR_SF_M2",                                                
    "UK3CB_TKA_O_BMP2"                                                  
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "UK3CB_TKA_O_M113_M2",
	"UK3CB_TKA_O_GAZ_Vodnik_PKT",
    "UK3CB_TKA_O_T72B",                                                 
    "UK3CB_TKA_O_LR_SF_M2",                                                
    "UK3CB_TKA_O_BMP2"                                                  // Ka-52
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "UK3CB_TKA_O_M113_M2",
	"UK3CB_TKA_O_GAZ_Vodnik_PKT",
    "UK3CB_TKA_O_T72B",                                                 
    "UK3CB_TKA_O_LR_SF_M2",                                                
    "UK3CB_TKA_O_BMP2"                                             // Mi-8MT (Cargo)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "UK3CB_TKA_O_Ural",                                             
    "UK3CB_TKA_O_BTR70",                                                  
    "UK3CB_TKA_O_BTR80",                                                  
    "UK3CB_TKA_O_BMP2K"                                           
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "UK3CB_TKA_O_Bell412_Armed",                                
    "UK3CB_TKA_O_Mi_24V", 
	"UK3CB_TKA_O_Mi_24P",
	"UK3CB_TKA_O_Mi8AMTSh",                                               
    "UK3CB_TKA_O_UH1H_GUNSHIP",                                                   
    "UK3CB_TKA_O_UH1H_M240"                                                    
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_TKA_O_MIG21_CAS",
    "UK3CB_TKA_O_MIG29SM",                                             // Su-25 (KH29)
    "UK3CB_TKA_O_Su25SM_CAS",
	"UK3CB_TKA_O_L39_CAS"                                              // Mig-29SM
];
