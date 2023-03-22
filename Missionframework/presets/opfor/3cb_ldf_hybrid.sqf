/*
    LDF w/ Western Armaments - Eastern Rotary

    Needed Mods:
    - 3CB

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_LDF_O_OFF";                                      // Officer
opfor_squad_leader = "UK3CB_LDF_O_TL";                                  // Squad Leader
opfor_team_leader = "UK3CB_LDF_O_TL";                                   // Team Leader
opfor_sentry = "UK3CB_LDF_O_MK";                                        // Rifleman (Lite)
opfor_rifleman = "UK3CB_LDF_O_RIF_2";                                   // Rifleman
opfor_rpg = "UK3CB_LDF_O_LAT";                                          // Rifleman (LAT)
opfor_grenadier = "UK3CB_LDF_O_GL";                                     // Grenadier
opfor_machinegunner = "UK3CB_LDF_O_AR";                                 // Autorifleman
opfor_heavygunner = "UK3CB_LDF_O_MG";                                   // Heavy Gunner
opfor_marksman = "UK3CB_LDF_O_SF_MK";                                   // Marksman
opfor_sharpshooter = "UK3CB_LDF_O_SNI";                                 // Sharpshooter
opfor_sniper = "UK3CB_LDF_O_SF_SNI";                                    // Sniper
opfor_at = "UK3CB_LDF_O_AT";                                            // AT Specialist
opfor_aa = "UK3CB_LDF_O_AA";                                            // AA Specialist
opfor_medic = "UK3CB_LDF_O_MD";                                         // Combat Life Saver
opfor_engineer = "UK3CB_LDF_O_ENG";                                     // Engineer
opfor_paratrooper = "UK3CB_LDF_O_LAT";                                  // Paratrooper'
opfor_crew_ground = "UK3CB_LDF_O_CREW";                                 // Crewman
opfor_crew_air = "UK3CB_LDF_O_JET_PILOT";                               // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhsusf_M1220_usarmy_wd";                                  // M1220
opfor_mrap_armed = "rhsusf_M1220_M153_M2_usarmy_wd";                    // M1220 W/ M2
opfor_transport_helo = "RHS_Mi8AMT_vdv";                                // Mi-8MT (Cargo)
opfor_transport_truck = "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy";         // M1083A1P2 W/ M2
opfor_ammobox_transport = "RHS_Ural_Open_MSV_01";                       // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "RHS_Ural_Fuel_MSV_01";                              // Ural-4320 Fuel
opfor_ammo_truck = "rhs_gaz66_ammo_msv";                                // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // FUEL TANK
opfor_ammo_container = "VirtualReammoBox_camonet_F";                    // AMMO CRATES
opfor_flag = "Flag_LIV";                                                // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_LDF_O_RIF_2",                                                // Rifleman
    "UK3CB_LDF_O_AR",                                                   // Autorifleman
    "UK3CB_LDF_O_RIF_1",                                                // Rifleman
    "UK3CB_LDF_O_LAT",                                                  // Rifleman (AT)
    "UK3CB_LDF_O_MG",                                                   // Autorifleman
    "UK3CB_LDF_O_MK",                                                   // Marksman
    "UK3CB_LDF_O_MD",                                                   // Medic
    "UK3CB_LDF_O_ENG"                                                   // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1151_m2crows_usarmy_wd"                                    // M1151A1 (M2 CROWS)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m966_w",                                                    // M966A1 (TOW)
    "rhsusf_m113_usarmy_M240",                                          // M113A3 (M240)
    "rhsusf_m113_usarmy",                                               // M113A3 (M2)
    "rhsusf_stryker_m1126_m2_wd",                                       // M1126 (M2)
    "RHS_M2A2_wd",                                                      // M2A2ODS
    "RHS_Stinger_AA_pod_WD",                                            // Stinger Turret
    "rhsusf_m1a1aimwd_usarmy",                                          // M1A1AIM
    "rhsusf_m1a1aim_tuski_wd"                                           // M1A1AIM TUSK I
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m966_w",                                                    // M966A1 (TOW)
    "rhsusf_m113_usarmy",                                               // M113A3 (M2)
    "rhsusf_stryker_m1126_m2_wd"                                        // M1126 (M2)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m966_w",                                                    // M966A1 (TOW)
    "rhsusf_m113_usarmy_M240",                                          // M113A3 (M240)
    "rhsusf_m113_usarmy",                                               // M113A3 (M2)
    "rhsusf_stryker_m1126_m2_wd",                                       // M1126 (M2)
    "RHS_M2A2_wd",                                                      // M2A2ODS
    "rhsusf_m1a1aimwd_usarmy",                                          // M1A1AIM
    "rhsusf_m1a1aim_tuski_wd",                                          // M1A1AIM TUSK I
    "rhsusf_m1a1aimwd_usarmy",                                          // M1A1AIM
    "rhsusf_m1a1aim_tuski_wd",                                          // M1A1AIM TUSK I
    "RHS_Mi8AMT_vdv",                                                   // Mi-8MT (Cargo)
    "RHS_Mi8AMT_vdv",                                                   // Mi-8MT (Cargo)
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "RHS_Mi24V_vdv"                                                     // Mi-24V (AT)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1043_w_m2",                                                // M1043A2 (M2)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m1151_m2crows_usarmy_wd",                                   // M1151A1 (M2 CROWS)
    "rhsusf_m113_usarmy_M240",                                          // M113A3 (M240)
    "rhsusf_m113_usarmy",                                               // M113A3 (M2)
    "rhsusf_stryker_m1126_m2_wd",                                       // M1126 (M2)
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "RHS_Mi8AMT_vdv",                                                   // Mi-8MT (Cargo)
    "RHS_M2A2_wd"                                                       // M2A2ODS

];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "rhsusf_m113_usarmy_M240",                                          // M113A3 (M240)
    "rhsusf_m113_usarmy",                                               // M113A3 (M2)
    "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",                             // M1083A1P2 W/ M2
    "rhsusf_stryker_m1126_m2_wd",                                       // M1126 (M2)
    "RHS_Mi8AMT_vdv",                                                   // Mi-8MT (Cargo)
    "RHS_Mi24V_vdv"                                                     // Mi-24V (AT)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "RHS_Mi8AMT_vdv",                                                   // Mi-8MT (Cargo)
    "RHS_Mi24V_vdv"                                                     // Mi-24V (AT)
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "RHS_Su25SM_vvsc",                                                  // Su-25
    "RHS_Su25SM_KH29_vvsc",                                             // Su-25 (KH29)
    "rhs_mig29sm_vvsc"                                                  // Mig-29SM
];
