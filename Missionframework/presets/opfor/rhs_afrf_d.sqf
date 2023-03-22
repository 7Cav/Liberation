/*
    Needed Mods:
    - RHS AFRF

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "rhs_vdv_des_officer_armored";                                  // Officer
opfor_squad_leader = "rhs_vdv_des_sergeant";                            // Squad Leader
opfor_team_leader = "rhs_vdv_des_junior_sergeant";                             // Team Leader
opfor_sentry = "rhs_vdv_des_rifleman_lite";                                  // Rifleman (Lite)
opfor_rifleman = "rhs_vdv_des_rifleman";                                // Rifleman
opfor_rpg = "rhs_vdv_des_LAT";                                          // Rifleman (LAT)
opfor_grenadier = "rhs_vdv_des_grenadier";                              // Grenadier
opfor_machinegunner = "rhs_vdv_des_arifleman_rpk";                          // Autorifleman
opfor_heavygunner = "rhs_vdv_des_machinegunner";                        // Heavy Gunner
opfor_marksman = "rhs_vdv_des_rifleman_asval";                                // Marksman
opfor_sharpshooter = "rhs_vdv_des_marksman_asval";                            // Sharpshooter
opfor_sniper = "rhs_vdv_des_marksman";                                  // Sniper
opfor_at = "rhs_vdv_des_at";                                            // AT Specialist
opfor_aa = "rhs_vdv_des_aa";                                            // AA Specialist
opfor_medic = "rhs_vdv_des_medic";                                      // Combat Life Saver
opfor_engineer = "rhs_vdv_des_engineer";                                // Engineer
opfor_paratrooper = "rhs_vdv_des_efreitor";                                // Paratrooper
opfor_crew_ground = "rhs_msv_emr_armoredcrew";                          // Crewman
opfor_crew_air = "rhssaf_airforce_o_pilot_transport_heli";              // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhs_tigr_m_3camo_vdv";                                            // GAZ-233011
opfor_mrap_armed = "rhs_tigr_sts_3camo_vdv";                                  // GAZ-233014 (Armed)
opfor_transport_helo = "RHS_Mi8T_vdv";                          // Mi-8MT (Cargo)
opfor_transport_truck = "RHS_Ural_VDV_01";                              // Ural-4320 Transport (Covered)
opfor_ammobox_transport = "RHS_Ural_Open_VDV_01";                       // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "RHS_Ural_Fuel_VDV_01";                              // Ural-4320 Fuel
opfor_ammo_truck = "rhs_gaz66_ammo_vdv";                                // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "rhs_Flag_Russia_F";                                       // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "rhsgref_cdf_reg_squadleader",                                             // Rifleman
    "rhsgref_cdf_reg_rifleman_rpg75",                                             // Rifleman
    "rhsgref_cdf_reg_rifleman",                                             // Rifleman
    "rhsgref_cdf_reg_machinegunner",                                                  // Rifleman (AT)
    "rhs_msv_emr_arifleman",                                            // Autorifleman
    "rhsgref_cdf_reg_grenadier_rpg",                                             // Marksman
    "rhsgref_cdf_reg_grenadier_rpg",                                                // Medic
    "rhsgref_cdf_reg_engineer"                                             // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "rhs_tigr_sts_3camo_vdv",
	"rhsgref_BRDM2_HQ_vdv",
	"rhsgref_BRDM2_vdv"                                                 // GAZ-233014 (Armed)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "rhs_tigr_m_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_btr80_vdv",                                                    // BMP-2D                                                   // BMP-2K
    "rhs_btr80a_vdv",                                                    // BRM-1K
    "rhs_t90_tv"                                                          // T80                                                   // T90SA (2016)
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
	"rhsgref_BRDM2_HQ_vdv",
	"rhsgref_BRDM2_vdv",
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_m_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_btr80_vdv",                                                    // BTR-80
    "rhs_btr80a_vdv"                                                    // BTR-80A
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "RHS_Ural_Open_VDV_01",                                             // Ural-4320 Transport
    "RHS_Ural_VDV_01",                                                  // Ural-4320 Transport (Covered)
    "rhs_bmp2e_vdv",                                                    // BMP-2D
    "rhs_bmp2e_vdv",                                                    // BMP-2K
    "rhs_bmp2e_vdv",                                                    // BRM-1K
    "rhs_t90_tv",                                                          // T80
    "rhs_t90saa_tv",                                                          // T80
    "rhs_t90sm_tv",
	"rhs_2s3_at_tv",                                                      // T90A
    "RHS_Mi24V_vdv",                                                // Mi-24P (AT)
    "RHS_Mi24P_vdv",                                                // Mi-24V (AT)
    "RHS_Mi8MTV3_vdv",                                             // Mi-8MT (Cargo)
    "RHS_Ka52_vvs",
	"rhs_mi28n_vvs"                                                  // Ka-52
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "rhsgref_BRDM2_HQ_vdv",
	"rhsgref_BRDM2_vdv",                                                     // GAZ-233011
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "rhs_tigr_sts_3camo_vdv",                                                 // GAZ-233014 (Armed)
    "RHS_Ural_Open_VDV_01",                                             // Ural-4320 Transport
    "rhs_btr80_vdv",                                                    // BTR-80
    "rhs_btr80a_vdv",                                                   // BTR-80A
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    "RHS_Mi24V_vdv",                                                // Mi-24P (AT)
    "RHS_Mi24P_vdv",                                                // Mi-24V (AT)
    "RHS_Mi8T_vdv"                                              // Mi-8MT (Cargo)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "RHS_Ural_Open_VDV_01",                                             // Ural-4320 Transport
    "RHS_Ural_VDV_01",                                                  // Ural-4320 Transport (Covered)
    "rhs_btr80_vdv",                                                    // BTR-80
    "rhs_btr80a_vdv",                                                   // BTR-80A
    "rhs_bmp2e_vdv",                                                    // BMP-2D
    "RHS_Mi8T_vdv",                                             // Mi-8MT (Cargo)
    "RHS_Mi24V_vdv",                                                // Mi-24P (AT)
    "RHS_Mi24P_vdv"                                                 // Mi-24V (AT)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "RHS_Mi8mt_Cargo_vvsc",                                             // Mi-8MT (Cargo)
    "RHS_Mi24V_vdv", 
	"RHS_Mi24P_vdv",
	"RHS_Mi8MTV3_vdv",                                               // Mi-24P (AT)
    "rhs_mi28n_vvs",                                                   // Mi-28n (Multi-role)
    "RHS_Ka52_vvs"                                                    // Ka-52
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "RHS_Su25SM_vvs",                                                  // Su-25
    "rhs_pchela1t_vvs",                                             // Su-25 (KH29)
    "rhs_mig29sm_vvs",
	"RHS_T50_vvs_generic_ext"                                              // Mig-29SM
];
