/*
    Needed Mods:
    - 3CB

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_ADA_O_OFF";                                  // Officer
opfor_squad_leader = "UK3CB_ADA_O_SL";                              // Squad Leader
opfor_team_leader = "UK3CB_ADA_O_TL";                               // Team Leader
opfor_sentry = "UK3CB_ADA_O_RIF_2";                                 // Rifleman (Lite)
opfor_rifleman = "UK3CB_ADA_O_RIF_1";                               // Rifleman
opfor_rpg = "UK3CB_ADA_O_LAT";                                      // Rifleman (LAT)
opfor_grenadier = "UK3CB_ADA_O_GL";                                 // Grenadier
opfor_machinegunner = "UK3CB_ADA_O_AR";                             // Autorifleman
opfor_heavygunner = "UK3CB_ADA_O_MG";                               // Heavy Gunner
opfor_marksman = "UK3CB_ADA_O_MK";                                  // Marksman
opfor_sharpshooter = "UK3CB_ADA_O_MK";                              // Sharpshooter
opfor_sniper = "UK3CB_ADA_O_SNI";                                   // Sniper
opfor_at = "UK3CB_ADA_O_AT";                                        // AT Specialist
opfor_aa = "UK3CB_ADA_O_AA";                                        // AA Specialist
opfor_medic = "UK3CB_ADA_O_MD";                                     // Combat Life Saver
opfor_engineer = "UK3CB_ADA_O_ENG";                                 // Engineer
opfor_paratrooper = "UK3CB_ADA_O_SF_TL";                         // Paratrooper
opfor_crew_ground = "UK3CB_ADA_O_CREW";                          // Crewman
opfor_crew_air = "UK3CB_ADA_O_JET_PILOT";                        // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhs_tigr_m_vmf";                                    // Vodnik
opfor_mrap_armed = "rhs_btr70_vmf";                             // Vodnik (Armed)
opfor_transport_helo = "RHS_Mi8mt_vdv";                                  // Mi-8MT (Cargo)
opfor_transport_truck = "UK3CB_ADA_O_Ural";                                   // Ural-4320 Transport (Covered)
opfor_ammobox_transport = "UK3CB_TKA_O_Ural_Open";                            // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_ADA_O_Ural_Fuel";                                   // Ural-4320 Fuel
opfor_ammo_truck = "UK3CB_ADA_O_Ural_Ammo";                                   // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";                   // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";                   // Taru Ammo Pod
opfor_flag = "Flag_ADA_Army";                                                      // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_ADM_O_WAR",
    "UK3CB_ADM_O_TL",
    "UK3CB_ADM_O_RIF_1",
    "UK3CB_ADM_O_SL",
    "UK3CB_ADM_O_AT",
    "UK3CB_ADM_O_MD",
    "UK3CB_ADM_O_MK",
    "UK3CB_ADM_O_ENG",
    "UK3CB_ADM_O_MG",
    "UK3CB_ADM_O_AR"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "UK3CB_ADM_O_Hilux_Pkm",
	"UK3CB_ADM_O_Hilux_Rocket",
	"UK3CB_ADM_O_LR_M2"                                                 
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "UK3CB_ADM_O_Hilux_Pkm",
    "UK3CB_ADM_O_Hilux_Rocket",
    "UK3CB_ADM_O_LR_M2"                                                        
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
	"rhsgref_BRDM2_vmf",
	"rhs_btr70_vmf",
    "rhs_btr60_vmf",                                                 
    "rhs_btr80_vmf"                                                                                               
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "UK3CB_ADA_O_V3S_Closed",
	"UK3CB_ADA_O_Ural",
    "UK3CB_ADA_O_V3S_Closed",
    "UK3CB_ADA_O_Ural",                                                
    "rhs_btr70_vmf",
    "rhs_btr60_vmf",                                                 
    "rhs_btr80_vmf",
    "rhs_t80b",
    "RHS_Mi8mt_vdv",
    "RHS_Mi24V_vdv"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "UK3CB_ADA_O_V3S_Closed",
    "UK3CB_ADA_O_Ural",
    "UK3CB_ADA_O_V3S_Closed",
    "UK3CB_ADA_O_Ural",                                                
    "rhs_btr70_vmf",
    "rhs_btr60_vmf"                                       
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "UK3CB_ADA_O_V3S_Closed",
    "UK3CB_ADA_O_Ural",
    "UK3CB_ADA_O_V3S_Closed",
    "UK3CB_ADA_O_Ural",                                                
    "rhs_btr70_vmf",
    "rhs_btr60_vmf",                                                 
    "rhs_btr80_vmf",
    "RHS_Mi8mt_vdv",
    "RHS_Mi24V_vdv"                                         
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "RHS_Mi8mt_vdv",
    "RHS_Mi24V_vdv"                                                  
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_ADA_O_Antonov_AN2_Armed_Rockets",
    "UK3CB_ADA_O_Antonov_AN2_Armed"
    ];
