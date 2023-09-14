/*
    Needed Mods:
    - Project RACS SLA 2023

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "PRACS_SLA_A_Infantry_0";                                          // Officer
opfor_squad_leader = "PRACS_SLA_Especas_Recon_PSG";                                  // Squad Leader
opfor_team_leader = "PRACS_SLA_A_Infantry_TL";                                   // Team Leader
opfor_sentry = "PRACS_SLA_A_Infantry_RTO";                                      // Rifleman (Lite)
opfor_rifleman = "PRACS_SLA_A_Infantry";                                         // Rifleman
opfor_rpg = "PRACS_SLA_A_Infantry_RKT";                                          // Rifleman (LAT)
opfor_grenadier = "PRACS_SLA_A_Infantry_GRE";                                     // Grenadier
opfor_machinegunner = "PRACS_SLA_A_Infantry_MG";                                 // Autorifleman
opfor_heavygunner = "PRACS_SLA_A_Infantry_MG";                                  // Heavy Gunner
opfor_marksman = "PRACS_SLA_A_Infantry_M";                                       // Marksman
opfor_sharpshooter = "PRACS_SLA_Especas_Recon_M";                                // Sharpshooter
opfor_sniper = "PRACS_SLA_Especas_Ninja_M";                                            // Sniper
opfor_at = "PRACS_SLA_A_Infantry_RPG_AT";                                            // AT Specialist
opfor_aa = "PRACS_SLA_A_Infantry_AA";                                            // AA Specialist
opfor_medic = "PRACS_SLA_A_Infantry_Medic";                                              // Combat Life Saver
opfor_engineer = "PRACS_SLA_A_Infantry_ENG";                                        // Engineer
opfor_paratrooper = "PRACS_SLA_Paratrooper";                                   // Paratrooper
opfor_crew_ground = "PRACS_SLA_Tanker";                                         // Crewman
opfor_crew_air = "PRACS_SLA_Heli_pilot";                                           // Pilot

// Enemy vehicles used by secondary objectives.
opfor_mrap = "PRACS_SLA_BRDM_HQ";                                             // Ifrit
opfor_mrap_armed = "PRACS_SLA_BRDM";                                   // Ifrit (HMG)
opfor_transport_helo = "PRACS_SLA_Mi8amt";                   // Mi-290 Taru (Bench)
opfor_transport_truck = "PRACS_SLA_URAL";                         // Tempest Transport (Covered)
opfor_ammobox_transport = "PRACS_SLA_URAL_Open";                     // Tempest Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "PRACS_SLA_URAL_Fuel";                                 // Tempest Fuel
opfor_ammo_truck = "PRACS_SLA_Ural_Ammo";                                 // Tempest Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "PRACS_SLA_Flag";                                             // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "PRACS_SLA_Infantry",                                                     // Rifleman (Lite)
    "PRACS_SLA_Infantry",                                                     // Rifleman (Lite)
    "PRACS_SLA_Infantry_RKT",                                                     // Rifleman
    "PRACS_SLA_Infantry_RKT",                                                     // Rifleman
    "PRACS_SLA_Infantry_RPG_AT",                                                 // Rifleman (AT)
    "PRACS_SLA_Infantry_MG",                                                  // Autorifleman
    "PRACS_SLA_Infantry_M",                                                   // Marksman
    "PRACS_SLA_Infantry_Medic",                                               // Medic
    "PRACS_SLA_Infantry_ENG"                                                    // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "PRACS_SLA_Tigr"                                                  // Qilin (armed)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "PRACS_SLA_UAZ_DSHKM",                                                  // Ifrit (HMG)
    "PRACS_SLA_UAZ_AGS",                                                  // Ifrit (GMG)
    "PRACS_SLA_Tigr",                                                  // Ifrit (GMG)
    "PRACS_SLA_UAZ_SPG9",                                                    // Qilin (AT)
    "PRACS_SLA_Type63",                                        // BTR-K Kamysh
    "PRACS_SLA_BTR60",                                        // BTR-K Kamysh
    "PRACS_SLA_SA13",                                            // ZSU-39 Tigris
    "PRACS_SLA_MTLB_ZU23",                                            // ZSU-39 Tigris
    "PRACS_SLA_SA8",                                            // ZSU-39 Tigris
	"PRACS_SLA_BMP1",                                                // T-100 Varsuk
    "PRACS_SLA_BMP2",                                                // T-100 Varsuk
    "PRACS_SLA_T72B",                                                // T-140 Angara
    "PRACS_SLA_T72BV"                                                // T-140K Angara
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "PRACS_SLA_UAZ_DSHKM",                                                  // Ifrit (HMG)
    "PRACS_SLA_UAZ_AGS",                                                  // Ifrit (HMG)
    "PRACS_SLA_UAZ_SPG9",                                                    // Qilin (AT)
    "PRACS_SLA_Type63",                                          // MSE-3 Marid
    "PRACS_SLA_BTR60"                                         // BTR-K Kamysh
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "PRACS_SLA_UAZ_DSHKM",                                                  // Ifrit (HMG)
    "PRACS_SLA_UAZ_AGS",                                                  // Ifrit (GMG)
    "PRACS_SLA_Tigr",                                                  // Ifrit (GMG)
    "PRACS_SLA_UAZ_SPG9",                                                    // Qilin (AT)
    "PRACS_SLA_URAL",                                           // Tempest Transport
    "PRACS_SLA_URAL",                                             // Tempest Transport (Covered)
    "PRACS_SLA_Type63",                                        // BTR-K Kamysh
    "PRACS_SLA_BTR60",                                        // BTR-K Kamysh
    "PRACS_SLA_SA13",                                            // ZSU-39 Tigris
    "PRACS_SLA_MTLB_ZU23",                                            // ZSU-39 Tigris
    "PRACS_SLA_SA8",                                            // ZSU-39 Tigris
	"PRACS_SLA_BMP1",                                                // T-100 Varsuk
    "PRACS_SLA_BMP2",                                                // T-100 Varsuk
    "PRACS_SLA_T72B",                                                // T-140 Angara
    "PRACS_SLA_T72BV",                                               // T-140K Angara
    "PRACS_SLA_Mi17Sh",                                 // Po-30 Orca (Armed)
    "PRACS_SLA_Mi17Sh_UPK",                                 // Po-30 Orca (Armed)
    "PRACS_SLA_Mi8amt",                                      // Mi-290 Taru (Bench)
    "PRACS_SLA_Mi24V_UPK"                                 // Mi-48 Kajman
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "PRACS_SLA_UAZ_DSHKM",                                                  // Ifrit (HMG)
    "PRACS_SLA_Tigr",                                                  // Ifrit (HMG)
    "PRACS_SLA_URAL",                                           // Tempest Transport
    "PRACS_SLA_Type63",                                          // MSE-3 Marid
    "PRACS_SLA_BTR60",                                        // BTR-K Kamysh
    "PRACS_SLA_MTLB_ZU23",                                            // ZSU-39 Tigris
    "PRACS_SLA_Mi17Sh",                                 // Po-30 Orca (Armed)
    "PRACS_SLA_Mi8amt"                                       // Mi-290 Taru (Bench)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "PRACS_SLA_URAL",                                           // Tempest Transport
    "PRACS_SLA_URAL",                                             // Tempest Transport (Covered)
    "PRACS_SLA_BMP2",                                          // MSE-3 Marid
    "PRACS_SLA_Mi8amt",                                      // Mi-290 Taru (Bench)
    "PRACS_SLA_Mi17Sh"                                  // Po-30 Orca (Armed)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "PRACS_SLA_Mi8amt",                                      // Mi-290 Taru (Bench)
    "PRACS_SLA_Mi17Sh",                                 // Po-30 Orca (Armed)
    "PRACS_SLA_Mi24V_UPK"                                 // Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "PRACS_SLA_Su25",                                  // To-199 Neophron (CAS)
    "PRACS_SLA_SU22",                                  // Bomber
	"PRACS_SLA_MiG23",                                  // Intercepter
	"PRACS_SLA_MIG28"                                              // To-201 Shikra
];
