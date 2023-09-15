/*
    Needed Mods:
    - RHS USAF
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack
    - HATCHET
    - ACE
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V3_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy";             // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy";    // This is the mobile respawn (and medical) truck.
huron_typename = "RHS_CH_47F";                                          // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "B_crew_F";                                         // This defines the crew for vehicles.
pilot_classname = "B_Helipilot_F";                                      // This defines the pilot for helicopters.
fixed_wing_classname = "B_Pilot_F";                                     // This defines the pilot for fixed wing aircraft.
rotary_cas_classname = "B_helicrew_F";                                  // This defines the pilot for rotary cas aircraft.
rotary_logistics_classname = "B_soldier_repair_F";                      // This defines the pilot for rotary logistics.
KP_liberation_little_bird_classname = "RHS_MELB_MH6M";                  // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_blackhawk_classname = "vtx_MH60M";                      // These are the blackhawks which spawn at the Freedom or at Chimera base.
KP_liberation_black_wasp_classname = "USAF_F35A";            // These are the F/A-181 Black Wasp IIs that spawn at the freedom or Chimera base.
KP_liberation_a10_classname = "USAF_A10";                               // A-10C
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "rhsusf_M977A4_BKIT_usarmy_d";          // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "Land_Radar_Small_F";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_Missle_Trolley_02_F";         // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["rhsusf_army_ocp_riflemanl",0,0,0],                               // Rifleman (Light)
    ["rhsusf_army_ocp_rifleman",0,0,0],                                // Rifleman
    ["rhsusf_army_ocp_riflemanat",0,0,0],                              // Rifleman (AT)
    ["rhsusf_army_ocp_grenadier",0,0,0],                               // Grenadier
    ["rhsusf_army_ocp_autorifleman",0,0,0],                            // Autorifleman
    ["rhsusf_army_ocp_machinegunner",0,0,0],                           // Heavygunner
    ["rhsusf_army_ocp_marksman",0,0,0],                                // Marksman
    ["rhsusf_army_ocp_javelin",0,0,0],                                // AT Specialist
    ["rhsusf_army_ocp_aa",0,0,0],                                     // AA Specialist
    ["rhsusf_army_ocp_medic",0,0,0],                                   // Combat Life Saver
    ["rhsusf_army_ocp_engineer",0,0,0],                                // Engineer
    ["rhsusf_army_ocp_explosives",0,0,0],                              // Explosives Specialist
    ["rhsusf_usmc_recon_marpat_d_rifleman",0,0,0],                     // Recon Rifleman
    ["rhsusf_usmc_recon_marpat_d_rifleman_at",0,0,0],                  // Recon Rifleman (AT)
    ["rhsusf_usmc_recon_marpat_d_machinegunner_m249",0,0,0],           // Recon Autorifleman
    ["rhsusf_usmc_recon_marpat_d_machinegunner",0,0,0],                // Recon Machine Gunner
    ["rhsusf_usmc_recon_marpat_d_marksman",0,0,0],                     // Recon Marksman
    ["rhsusf_usmc_recon_marpat_d_sniper_M107",0,0,0],                  // Recon Sniper (M107)
    ["rhsusf_army_ocp_sniper",0,0,0],                                  // Sniper
    ["rhsusf_army_ocp_sniper_m107",0,0,0],                             // Sniper (M107)
    ["rhsusf_army_ocp_sniper_m24sws",0,0,0],                           // Sniper (M24 SWS)
    ["rhsusf_army_ocp_combatcrewman",0,0,0],                           // Crewman
    ["rhsusf_army_ocp_rifleman_101st",0,0,0],                          // Para Trooper
    ["rhsusf_army_ocp_helicrew",0,0,0],                                // Helicopter Crew
    ["rhsusf_army_ocp_helipilot",0,0,0],                               // Helicopter Pilot
    ["rhsusf_airforce_jetpilot",0,0,0]                                 // Pilot
];

light_vehicles = [
    ["B_Quadbike_01_F",0,0,0],                                       // Quad Bike
    ["rhsusf_mrzr4_d",0,0,0],                                        // MRZR 4
    ["rhsusf_m1025_d",0,0,0],                                        // M1025A2
    ["rhsusf_m1025_d_m2",300,150,150],                               // M1025A2 (M2)
    ["rhsusf_m1025_d_Mk19",400,250,150],                             // M1025A2 (Mk19)
    ["rhsusf_m998_d_2dr_fulltop",0,0,0],                             // M1097A2 (2D)
    ["rhsusf_m998_d_2dr_halftop",0,0,0],                             // M1097A2 (2D / open back)
    ["rhsusf_M1220_usarmy_d",0,0,0],                                 // M1220
    ["rhsusf_M1220_M2_usarmy_d",400,150,150],                        // M1220 (M2)
    ["rhsusf_M1220_MK19_usarmy_d",450,150,150],                      // M1220 (Mk19)
    ["rhsusf_M1220_M153_M2_usarmy_d",400,150,150],                   // M1220 (M2 CROWS)
    ["rhsusf_M1220_M153_MK19_usarmy_d",450,250,150],                 // M1220 (Mk19 CROWS)
    ["rhsusf_M1238A1_socom_d",300,150,150],                          // M1238
    ["rhsusf_M1238A1_M2_socom_d",400,150,150],                       // M1238 (M2)
    ["rhsusf_M1238A1_Mk19_socom_d",450,400,150],                     // M1238 (Mk19)
    ["rhsusf_M1232_usarmy_d",350,150,150],                           // M1232
    ["rhsusf_M1232_M2_usarmy_d",400,150,150],                        // M1232 (M2)
    ["rhsusf_M1232_MK19_usarmy_d",450,250,150],                      // M1232 (Mk19)
    ["rhsusf_M1230a1_usarmy_d",0,0,0],                               // M1230A1 (MEDEVAC)
    ["rhsusf_m1165a1_gmv_m134d_m240_socom_d",300,200,150],           // SOCOM DAKA DAKA
    ["rhsusf_m1165a1_gmv_m2_m240_socom_d",300,200,150],
    ["rhsusf_M1083A1P2_D_open_fmtv_usarmy",0,0,0],                   // M1083A1P2 Transport
    ["rhsusf_M1083A1P2_D_fmtv_usarmy",0,0,0],                        // M1083A1P2 Transport (Covered)
    ["rhsusf_M1083A1P2_D_flatbed_fmtv_usarmy",0,0,0],                // M1083A1P2
    ["rhsusf_M977A4_BKIT_usarmy_d",0,0,0],                           // M977A4 BKIT
    ["rhsusf_M977A4_BKIT_M2_usarmy_d",500,300,150],                        // M977A4 BKIT (HMG)
    ["rhsusf_M1239_socom_d",300,200,150],                            // M1239 AUV
    ["rhsusf_M1239_M2_socom_d",300,200,150],                         // M1239 AUV (M2 CROWS)
    ["rhsusf_M1239_MK19_socom_d",300,500,150],                       // M1239 AUV (Mk19 CROWS)
    ["rhsusf_M1117_D",600,400,150],                                  // M1117 ASV
    ["B_UGV_01_F",450,250,250],                                      // UGV Stomper
    ["B_UGV_01_rcws_F",450,250,150],                                 // UGV Stomper (RCWS)
    ["B_Boat_Transport_01_F",0,0,0],                                 // Assault Boat
    ["B_Boat_Armed_01_minigun_F",300,150,150],                       // Speedboat Minigun
    ["rhsusf_mkvsoc",300,150,150],                                   // Mk.V SOCOM
    ["B_SDV_01_F",300,150,150]                                       // SDV
];

heavy_vehicles = [
    ["rhsusf_m113d_usarmy",800,500,150],                               // M113A3 (M2)
    ["rhsusf_m113d_usarmy_MK19",800,600,150],                        // M113A3 (Mk19)
    ["rhsusf_m113d_usarmy_medical",0,0,0],                           // M113A3 (Medical)
    ["rhsusf_stryker_m1126_m2_d",1500,800,300],                       // M1126 Stryker  
    ["rhsusf_stryker_m1126_mk19_d",1500,1000,300],                     // M1126 Stryker (Mk19)
    ["cav_dragoon_D",1200,900,400],                       // Pandur 
    ["RHS_M2A2_BUSKI",1100,600,400],                                  // M2A2ODS (Busk I)
    ["RHS_M2A3_BUSKIII",1100,700,400],                                // M2A3 (Busk III)
    ["RHS_M6",1100,700,400],                                          // M6A2
    ["rhsusf_m1a1aim_tuski_d",1600,1200,700],                         // M1A1SA (Tusk I)
    ["rhsusf_m1a2sep1tuskiid_usarmy",1600,1200,700],                  // M1A2SEPv1 (Tusk II)
    ["rhsusf_m1a2sep2tuskiid_usarmy",1600,1300,700],                  // M1A2SEPv2 (Tusk II)
    ["rhsusf_m109d_usarmy",1800,1000,800]                            // M109A6
];

air_vehicles = [
    ["B_UAV_01_F",700,0,0],                                            // AR-2 Darter
    ["B_UAV_06_F",1000,0,0],                                            // AL-6 Pelican (Cargo)
    ["RHS_MELB_MH6M",0,0,0],                                         // MH-6M Little Bird
    ["RHS_MELB_AH6M",800,700,400],                                         // AH-6M Pawnee
    ["RHS_UH1Y_UNARMED_d",0,0,0],                                    // UH-1Y (Unarmed)
    ["RHS_UH1Y_d_GS",1000,400,400],                                   // UH-1Y (Ground Suppression)
    ["rhs_uh1h_hidf_gunship",1000,500,400],                           // UH-1H Gunship (Vietnam)
    ["RHS_AH1Z",1100,500,400],                                        // AH-1Z (Multi-Role)
    ["RHS_AH64D",1200,600,400],                                       // AH-64D (Multi-Role)
    ["vtx_UH60M_SLICK",0,0,0],                                          // UH-60M (Unarmed)
    ["vtx_MH60M",1000,600,400],                                       // UH-60M
    ["vtx_MH60M_DAP",1200,900,400],                                   // UH-60M DAP
    ["vtx_UH60M_MEDEVAC",0,0,0],                                // UH-60M MEV2
    ["RHS_CH_47F_10",0,0,0],                                         // CH-47 Chinook (Armed)
    ["rhsusf_CH53E_USMC_D",0,0,0],                                   // CH-53E Super Stallion
    ["rhsusf_CH53E_USMC_GAU21_D",1000,500,800],                             // CH-53E Super Stallion (GAU-21)
    ["USAF_C130J",0,0,0],                                            // C-130J Super Hercules
    ["USAF_C130J_Cargo",0,0,0],                                      // C-130J Super Hercules (Cargo)
    ["USAF_C17",0,0,0],                                              // C-17 Globemaster III
    ["B_UAV_02_dynamicLoadout_F",1000,500,400],                       // MQ-4A Greyhawk
    ["B_T_UAV_03_dynamicLoadout_F",1000,500,400],                     // MQ-12 Falcon
    ["B_UAV_05_F",800,0,600],                                            // UCAV Sentinel
    ["USAF_RQ4A",1000,0,600],                                             // RQ-4A Global Hawk
    ["USAF_MQ9",600,500,400],                                        // MQ-9 Reaper
    ["RHS_A10",1200,700,600],                                         // A-10A (CAS)
    ["USAF_A10",1200,700,600],                                        // A-10C Thunderbolt II
    ["JS_JC_FA18E",1300,700,600],                                     // F/A-18 E Super Hornet
    ["JS_JC_FA18F",1300,700,600],                                     // F/A-18 F Super Hornet
    ["RHSGREF_A29B_HIDF",800,350,400],                               //A-29 Super Tucano
    ["USAF_F22",1500,700,600],                                        // F-22A Raptor
    ["USAF_F22_EWP_AA",1500,700,600],                                 // F-22A Raptor (EWP-AA)
    ["USAF_F22_EWP_AG",1500,700,600],                                 // F-22A Raptor (EWP-AG)
    ["USAF_F22_Heavy",1500,700,600],                                  // F-22A Raptor (Heavy)
    ["USAF_F35A_STEALTH",1700,700,600],                               // F-35A Lightning II
    ["USAF_F35A",1700,700,600],                                       // F-35A Lightning II (Heavy)
    ["B_Plane_Fighter_01_F",1700,700,600],                            // F/A-181 Black Wasp II
    ["B_Plane_Fighter_01_Stealth_F",1700,700,600],                    // F/A-181 Black Wasp II (Stealth)
    ["USAF_AC130U",2200,2000,2000],                                  // AC130 SPOOKY II
    ["B_T_VTOL_01_infantry_F",0,0,0],                                // V-44 X Blackfish (Infantry)
    ["B_T_VTOL_01_vehicle_F",2000,1700,1000]                         // V-44 X Blackfish (Vehicle)
];

static_vehicles = [
    ["RHS_M2StaticMG_MiniTripod_D",50,150,50],                       // Mk2 HMG .50
    ["RHS_M2StaticMG_D",50,150,50],                                  // Mk2 HMG .50 (Raised)
    ["RHS_MK19_TriPod_D",50,150,50],                                 // Mk19 GMG 20mm
    ["RHS_TOW_TriPod_D",50,150,50],                                  // TOW (AT)
    ["RHS_Stinger_AA_pod_D",50,150,50],                              // Stinger (AA)
    ["RHS_M252_D",50,150,50],                                        // Mk6 Mortar
    ["B_AAA_System_01_F",500,500,100],                                // CIWS
	["RHS_M119_D",50,150,50],                                        // M119A2
    ["B_SAM_System_03_F",1000,1000,100]                               // MIM-145 Defender
];

buildings = [
    ["Land_Cargo_House_V3_F",10,10,10],
    ["Land_Cargo_Patrol_V3_F",10,10,10],
    ["Land_Cargo_Tower_V3_F",200,200,200],
    ["Flag_NATO_F",10,10,10],
    ["Flag_US_F",10,10,10],
    ["BWA3_Flag_Ger_F",10,10,10],
    ["Flag_UK_F",10,10,10],
    ["Flag_White_F",10,10,10],
    ["Land_Medevac_house_V1_F",10,10,10],
    ["Land_Medevac_HQ_V1_F",10,10,10],
    ["Flag_RedCrystal_F",10,10,10],
    ["CamoNet_BLUFOR_F",10,10,10],
    ["CamoNet_BLUFOR_open_F",10,10,10],
    ["CamoNet_BLUFOR_big_F",10,10,10],
    ["Land_PortableLight_single_F",10,10,10],
    ["Land_PortableLight_double_F",10,10,10],
    ["Land_LampSolar_F",10,10,10],
    ["Land_LampHalogen_F",10,10,10],
    ["Land_LampStreet_small_F",10,10,10],
    ["Land_LampAirport_F",10,10,10],
    ["Land_HelipadCircle_F",10,10,10],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",10,10,10],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_101_blue_F",10,10,10],
    ["PortableHelipadLight_101_green_F",10,10,10],
    ["PortableHelipadLight_101_red_F",10,10,10],
    ["Land_CampingChair_V1_F",10,10,10],
    ["Land_CampingChair_V2_F",10,10,10],
    ["Land_CampingTable_F",10,10,10],
    ["MapBoard_altis_F",10,10,10],
    ["MapBoard_stratis_F",10,10,10],
    ["MapBoard_seismic_F",10,10,10],
    ["Land_Pallet_MilBoxes_F",10,10,10],
    ["Land_PaperBox_open_empty_F",10,10,10],
    ["Land_PaperBox_open_full_F",10,10,10],
    ["Land_PaperBox_closed_F",10,10,10],
    ["Land_DieselGroundPowerUnit_101_F",10,10,10],
    ["Land_ToolTrolley_102_F",10,10,10],
    ["Land_WeldingTrolley_101_F",10,10,10],
    ["Land_Workbench_101_F",10,10,10],
    ["Land_GasTank_101_blue_F",10,10,10],
    ["Land_GasTank_101_khaki_F",10,10,10],
    ["Land_GasTank_101_yellow_F",10,10,10],
    ["Land_GasTank_102_F",10,10,10],
    ["Land_BarrelWater_F",10,10,10],
    ["Land_BarrelWater_grey_F",10,10,10],
    ["Land_WaterBarrel_F",10,10,10],
    ["Land_WaterTank_F",10,10,10],
    ["Land_BagFence_Round_F",10,10,10],
    ["Land_BagFence_Short_F",10,10,10],
    ["Land_BagFence_Long_F",10,10,10],
    ["Land_BagFence_Corner_F",10,10,10],
    ["Land_BagFence_End_F",10,10,10],
    ["Land_BagBunker_Small_F",10,10,10],
    ["Land_BagBunker_Large_F",10,10,10],
    ["Land_BagBunker_Tower_F",10,10,10],
    ["Land_HBarrier_1_F",10,10,10],
    ["Land_HBarrier_3_F",10,10,10],
    ["Land_HBarrier_5_F",10,10,10],
    ["Land_HBarrier_Big_F",10,10,10],
    ["Land_HBarrierWall4_F",10,10,10],
    ["Land_HBarrierWall6_F",10,10,10],
    ["Land_HBarrierWall_corner_F",10,10,10],
    ["Land_HBarrierWall_corridor_F",10,10,10],
    ["Land_HBarrierTower_F",10,10,10],
    ["Land_CncBarrierMedium_F",10,10,10],
    ["Land_Bunker_01_blocks_1_F",10,10,10],
	["Land_Bunker_01_blocks_3_F",10,10,10],
	["Land_Bunker_01_big_F",10,10,10],
	["Land_Bunker_01_small_F",10,10,10],
	["Land_Bunker_01_tall_F",10,10,10],
	["Land_Mil_WallBig_4m_F",10,10,10],
	["Land_ControlTower_01_F",10,10,10],
	["Land_CncBarrierMedium4_F",10,10,10],
    ["Land_Concrete_SmallWall_4m_F",10,10,10],
    ["Land_Concrete_SmallWall_8m_F",10,10,10],
    ["Land_CncShelter_F",10,10,10],
    ["Land_CncWall1_F",10,10,10],
    ["Land_CncWall4_F",10,10,10],
    ["Land_Sign_WarningMilitaryArea_F",10,10,10],
    ["Land_Sign_WarningMilAreaSmall_F",10,10,10],
    ["Land_Sign_WarningMilitaryVehicles_F",10,10,10],
    ["Land_Razorwire_F",10,10,10],
    ["Land_ClutterCutter_large_F",10,10,10],
    ["Land_RoadBarrier_101_F",10,10,10],
    ["Land_ConcreteWall_101_l_4m_F",10,10,10],
    ["Land_ConcreteWall_101_l_8m_F",10,10,10],
    ["Land_GuardTower_101_F",10,10,10],
    ["Land_Rail_ConcreteRamp_F",10,10,10],
    ["Land_MedicalTent_101_NATO_generic_inner_F",10,10,10],
    ["Land_MedicalTent_101_floor_light_F",10,10,10],
    ["Land_Cargo210_EMP_F",10,10,10],
    ["Land_Obstacle_Ramp_F",10,10,10],
    ["Land_WoodenWindBreak_101_F",10,10,10],
    ["Land_RoadCone_101_F",10,10,10]
];

support_vehicles = [
    ["Land_Billboard_02_blank_F",0,0,0],
    [Arsenal_typename,1000,1000,0],
    [Respawn_truck_typename,1000,0,600],
    [FOB_box_typename,2000,2000,500],
    [FOB_truck_typename,2000,2000,2000],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,400,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,0,0,0],
    [KP_liberation_plane_slot_building,0,0,0],
    ["ACE_medicalSupplyCrate_advanced",0,0,0],
    ["ACE_Box_82mm_Mo_HE",0,100,0],
    ["ACE_Box_82mm_Mo_Smoke",0,100,0],
    ["ACE_Box_82mm_Mo_Illum",0,100,0],
    ["ACE_Wheel",50,0,0],
    ["ACE_Track",50,0,0],
    ["Box_T_NATO_Wps_F",0,150,0],
    ["Box_T_NATO_WpsSpecial_F",0,150,0],
    ["Box_NATO_Equip_F",0,150,0],
    ["USAF_missileCart_W_AGM114",0,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",0,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",0,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",0,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",0,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",0,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",0,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",0,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",0,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",0,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",0,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",0,150,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",0,150,0],                                 // Missile Cart (Mk82)
    ["B_APC_Tracked_01_CRV_F",1200,900,500],                             // CRV-6e Bobcat
    ["rhsusf_M1239_M2_Deploy_socom_d",800,500,150],                  // M1239 AUV (Deploy, M2)
    ["rhsusf_M1239_MK19_Deploy_socom_d",800,700,150],                // M1239 AUV (Deploy, Mk19)
    ["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",800,400,300],                // M1078A1R SOV
    ["rhsusf_M977A4_REPAIR_usarmy_d",0,0,100],                         // M977A4 Repair
    ["rhsusf_M978A4_usarmy_d",0,0,100],                               // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_usarmy_d",0,400,0],                         // M977A4 Ammo
    ["B_Slingload_01_Repair_F",200,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",100,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",100,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_machinegunner",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// AT specialists squad.
blufor_squad_at = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// AA specialists squad.
blufor_squad_aa = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// Force recon squad.
blufor_squad_recon = [
    "rhsusf_usmc_recon_marpat_d_teamleader",
    "rhsusf_usmc_recon_marpat_d_rifleman",
    "rhsusf_usmc_recon_marpat_d_rifleman",
    "rhsusf_usmc_recon_marpat_d_rifleman_at",
    "rhsusf_usmc_recon_marpat_d_autorifleman",
    "rhsusf_usmc_recon_marpat_d_machinegunner",
    "rhsusf_usmc_recon_marpat_d_marksman",
    "rhsusf_usmc_recon_marpat_d_sniper_M107",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "rhsusf_mkvsoc",                                                    // Mk.V SOCOM
    "rhsusf_m1a1aim_tuski_d",                                           // M1A1SA (Tusk I)
    "rhsusf_m1a2sep1tuskiid_usarmy",                                    // M1A2SEPv1 (Tusk II)
    "rhsusf_m109d_usarmy",                                              // M109A6
    "B_UAV_02_dynamicLoadout_F",                                        // MQ-4A Greyhawk
    "B_UAV_05_F",                                                       // UCAV Sentinel
    "USAF_MQ9",                                                         // MQ-9 Reaper
    "USAF_A10",                                                         // A-10C Thunderbolt II
    "USAF_F22",                                                         // F-22A Raptor
    "USAF_F22_EWP_AA",                                                  // F-22A Raptor (EWP-AA)
    "USAF_F22_EWP_AG",                                                  // F-22A Raptor (EWP-AG)
    "USAF_F22_Heavy",                                                   // F-22A Raptor (Heavy)
    "USAF_F35A_STEALTH",                                                // F-35A Lightning II
    "USAF_F35A",                                                        // F-35A Lightning II (Heavy)
    "JS_JC_FA18E",                                                      // F/A-18 E Super Hornet
    "JS_JC_FA18F",                                                      // F/A-18 F Super Hornet
    "USAF_AC130U"                                                       // AC130 SPOOKY II
];

ignore_clearcargo_items = [
    "ACE_medicalSupplyCrate"
];