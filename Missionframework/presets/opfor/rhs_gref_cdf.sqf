/*
    Needed Mods:
    - RHS AFRF

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "rhsgref_cdf_para_officer";                                  // Officer
opfor_squad_leader = "rhsgref_cdf_para_squadleader";                            // Squad Leader
opfor_team_leader = "rhsgref_cdf_para_rifleman_lite";                             // Team Leader
opfor_sentry = "rhsgref_cdf_ngd_rifleman_lite";                                  // Rifleman (Lite)
opfor_rifleman = "rhsgref_cdf_ngd_rifleman_ak74";                                // Rifleman
opfor_rpg = "rhsgref_cdf_para_grenadier_rpg";                                          // Rifleman (LAT)
opfor_grenadier = "rhsgref_cdf_ngd_grenadier";                              // Grenadier
opfor_machinegunner = "rhsgref_cdf_para_autorifleman";                          // Autorifleman
opfor_heavygunner = "rhsgref_cdf_para_machinegunner";                        // Heavy Gunner
opfor_marksman = "rhsgref_cdf_reg_rifleman_aks74";                                // Marksman
opfor_sharpshooter = "rhsgref_cdf_ngd_rifleman_rpg75";                            // Sharpshooter
opfor_sniper = "rhsgref_cdf_para_marksman";                                  // Sniper
opfor_at = "rhsgref_cdf_ngd_grenadier_rpg";                                            // AT Specialist
opfor_aa = "rhsgref_cdf_para_specialist_aa";                                            // AA Specialist
opfor_medic = "rhsgref_cdf_ngd_medic";                                      // Combat Life Saver
opfor_engineer = "rhsgref_cdf_ngd_engineer";                                // Engineer
opfor_paratrooper = "rhsgref_cdf_para_rifleman";                                // Paratrooper
opfor_crew_ground = "rhsgref_cdf_reg_crew";                                 // Crewman
opfor_crew_air = "rhsgref_cdf_air_pilot";                                   // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhsgref_BRDM2_HQ";                                            // GAZ-233011
opfor_mrap_armed = "rhsgref_BRDM2";                                  // GAZ-233014 (Armed)
opfor_transport_helo = "rhsgref_cdf_reg_Mi8amt";                          // Mi-8MT (Cargo)
opfor_transport_truck = "rhs_kraz255b1_cargo_open_vv";                              // Ural-4320 Transport (Covered)
opfor_ammobox_transport = "rhsgref_cdf_gaz66";                       // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "rhsgref_cdf_ural_fuel";                              // Ural-4320 Fuel
opfor_ammo_truck = "rhsgref_cdf_gaz66_ammo";                                // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "rhs_Flag_abk_F";                                       // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "rhsgref_nat_rifleman_vz58",                                             // Rifleman
    "rhsgref_nat_rifleman",                                             // Rifleman
    "rhsgref_nat_rifleman_akms",                                             // Rifleman
    "rhsgref_nat_machinegunner",                                                  // Rifleman (AT)
    "rhsgref_nat_hunter",                                            // Autorifleman
    "rhsgref_nat_commander",                                             // Marksman
    "rhsgref_nat_militiaman_kar98k",                                                // Medic
    "rhsgref_nat_pmil_rifleman_akm",
	"rhsgref_nat_pmil_rifleman_aksu", 
	"rhsgref_nat_pmil_saboteur", 
	"rhsgref_nat_pmil_commander", 
	"rhsgref_nat_pmil_grenadier_rpg", 
	"rhsgref_nat_pmil_medic", 
	"rhsgref_nat_pmil_grenadier"                                             // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "rhsgref_nat_uaz_dshkm",
	"rhsgref_nat_uaz_dshkm"                                                  // GAZ-233014 (Armed)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "rhsgref_nat_uaz_dshkm",                                                 // GAZ-233014 (Armed)
    "rhsgref_nat_uaz_dshkm",                                                 // GAZ-233014 (Armed)
    "rhsgref_BRDM2_HQ",                                                 // GAZ-233014 (Armed)
    "rhsgref_BRDM2_ATGM"                                                                                                // T90SA (2016)
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "rhs_tigr_sts_msv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_msv",                                               // GAZ-233014 (Armed)
	"rhsgref_nat_uaz_dshkm",                                                 // GAZ-233014 (Armed)
    "rhsgref_nat_uaz_dshkm",                                              // GAZ-233014 (Armed)
    "rhsgref_BRDM2_HQ",                                                 // GAZ-233014 (Armed)
    "rhsgref_BRDM2_ATGM",
    "rhsgref_ins_2b14",
    "rhs_t90a_tv"

];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "rhsgref_nat_btr70",
	"rhsgref_tla_offroad_armed",
	"rhsgref_hidf_m1025",
	"rhsgref_hidf_m113a3_unarmed",
	"rhsgref_hidf_m113a3_m2",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_msv",                                                 // GAZ-233014 (Armed)
    "rhsgref_BRDM2_ATGM",                                                 // GAZ-233014 (Armed)
    "rhsgref_cdf_ural_open",                                             // Ural-4320 Transport
    "RHS_Ural_MSV_01",                                                  // Ural-4320 Transport (Covered)
    "rhs_bmp2d_msv",                                                    // BMP-2D
    "rhsgref_cdf_bmp2k",                                                    // BMP-2K
    "rhsgref_cdf_2s1_at",                                                    // BRM-1K
    "rhsgref_cdf_zsu234",                                                    // ZSU-23-4V
    "rhsgref_cdf_zsu234",                                                    // ZSU-23-4V
    "rhsgref_cdf_t80bv_tv",                                                          // T80
    "rhsgref_cdf_t72bb_tv",                                                          // T80
    "rhs_t90a_tv",                                                      // T90A
    "rhsgref_mi24g_CAS",                                                // Mi-24P (AT)
    "RHS_Mi24V_AT_vvsc",                                                // Mi-24V (AT)
    "rhsgref_cdf_reg_Mi8amt",                                             // Mi-8MT (Cargo)
    "RHS_Ka52_vvsc"                                                     // Ka-52
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "rhs_tigr_msv",                                                     // GAZ-233011
    "rhs_tigr_sts_msv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_msv",                                                 // GAZ-233014 (Armed)
    "RHS_Ural_Open_MSV_01",                                             // Ural-4320 Transport
    "rhs_btr80_msv",                                                    // BTR-80
    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhsgref_mi24g_CAS",                                                // Mi-24P (AT)                                               // Mi-24V (AT)
    "rhsgref_cdf_reg_Mi8amt"                                              // Mi-8MT (Cargo)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "rhsgref_cdf_ural_open",                                             // Ural-4320 Transport
    "rhs_kraz255b1_cargo_open_vv",                                                  // Ural-4320 Transport (Covered)
    "rhsgref_cdf_btr80",                                                    // BTR-80
    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhsgref_cdf_btr70",                                                    // BMP-2D
    "rhsgref_cdf_reg_Mi8amt",                                             // Mi-8MT (Cargo)
    "rhsgref_mi24g_CAS",                                                // Mi-24P (AT)
    "RHS_Mi24V_AT_vvsc"                                                 // Mi-24V (AT)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "RHS_Mi8mt_Cargo_vvsc",                                             // Mi-8MT (Cargo)
    "RHS_Mi24P_AT_vvsc",                                                // Mi-24P (AT)
    "rhs_mi28n_vvsc",                                                   // Mi-28n (Multi-role)
    "RHS_Ka52_vvsc",
	"rhsgref_mi24g_CAS",
	"I_E_Heli_light_03_dynamicLoadout_F",
	"rhsgref_cdf_b_Mi24D_Early"                                                     // Ka-52
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "rhsgref_cdf_su25",                                                  // Su-25
    "rhsgref_cdf_mig29s",                                             // Su-25 (KH29)
    "rhs_l39_cdf",
	"RHS_AN2",
	"rhs_l159_CDF"                                                  // Mig-29SM
];
