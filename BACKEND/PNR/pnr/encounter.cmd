#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Sat Aug 17 14:53:43 2024                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Projects/System_pnr/DFT/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/System_pnr/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/System_pnr/DFT/sdc/SYS_TOP_func.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/SYS_TOP_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/SYS_TOP_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold { hold1_analysis_view hold2_analysis_view hold3_analysis_view}
floorPlan -d 240.47 160.47 4.0 4.0 4.0 4.0
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
selectWire 5.6000 0.8000 6.6000 159.5900 6 VDD
deleteSelectedFromFPlan
zoomBox 15.289 114.000 -7.916 90.273
selectWire 4.1000 2.3000 5.1000 158.0900 6 VSS
deleteSelectedFromFPlan
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry -noMinArea
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry -noMinArea
saveDesign /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.enc
saveFPlan /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.fp
setDrawView fplan
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage -1 0
panPage 1 0
uiSetTool move
selectObject Module U0_UART
deselectAll
selectWire 2.3000 2.3000 3.3000 158.0900 6 VSS
uiSetTool select
deselectAll
selectWire 4.1000 135.9900 236.1600 136.2500 1 VDD
zoomBox 15.811 139.030 -19.649 84.798
deselectAll
zoomBox 8.935 134.945 -2.440 118.924
zoomBox -15.216 156.500 43.709 68.371
uiSetTool move
selectObject Module U0_UART
zoomBox -15.216 164.322 60.396 71.501
setObjFPlanBox Module U0_UART 4.475 95.413 95.426 156.1065
zoomBox -24.643 162.814 55.016 123.739
uiSetTool move
uiSetTool move
setObjFPlanBox Module U0_UART 4.164 95.8245 95.184 156.0945
panCenter -13.875 144.286
uiSetTool select
deselectAll
selectObject Module U0_UART
uiSetTool select
panPage -1 0
panPage 1 0
setLayerPreference allM1 -isVisible 0
uiSetTool move
zoomBox 103.641 162.946 -13.174 55.278
uiSetTool move
zoomBox -15.280 115.076 38.316 86.609
uiSetTool select
uiSetTool move
uiSetTool select
uiSetTool move
deselectAll
selectObject Module U0_ALU
deselectAll
selectObject Module U0_UART
panCenter 43.449 96.270
uiSetTool select
panCenter 96.770 165.495
zoomBox 125.320 180.227 -14.954 74.108
windowSelect 64.666 95.896 61.845 92.291
uiSetTool move
selectObject Module U0_UART
zoomBox -28.253 137.466 83.862 68.633
zoomBox -12.509 113.064 38.531 85.206
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
