
###################################################################
########################### Variables #############################
###################################################################

lappend search_path /home/IC/Final_Project/std_cells
lappend search_path /home/IC/Final_Project/RTL/ALU
lappend search_path /home/IC/Final_Project/RTL/ASYNC_FIFO
lappend search_path /home/IC/Final_Project/RTL/CLKDIV_MUX
lappend search_path /home/IC/Final_Project/RTL/Clock_Divider
lappend search_path /home/IC/Final_Project/RTL/Clock_Gating
lappend search_path /home/IC/Final_Project/RTL/DATA_SYNC
lappend search_path /home/IC/Final_Project/RTL/PULSE_GEN
lappend search_path /home/IC/Final_Project/RTL/RegFile
lappend search_path /home/IC/Final_Project/RTL/RST_SYNC
lappend search_path /home/IC/Final_Project/RTL/Top	
lappend search_path /home/IC/Final_Project/RTL/UART/UART_RX
lappend search_path /home/IC/Final_Project/RTL/UART/UART_TOP
lappend search_path /home/IC/Final_Project/RTL/UART/UART_TX
lappend search_path /home/IC/Final_Project/RTL/SYS_CTRL


set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/Final_Project/Formality/Post_Syn/SYS_TOP.svf"
###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container Ref ALU.v
read_verilog -container Ref BIT_SYNC.v
read_verilog -container Ref fifo_mem.v
read_verilog -container Ref fifo_rd.v
read_verilog -container Ref fifo_wr.v
read_verilog -container Ref Async_fifo.v
read_verilog -container Ref CLKDIV_MUX.v
read_verilog -container Ref ClkDiv.v
read_verilog -container Ref CLK_GATE.v
read_verilog -container Ref DATA_SYNC.v
read_verilog -container Ref PULSE_GEN.v
read_verilog -container Ref RegFile.v
read_verilog -container Ref RST_SYNC.v
read_verilog -container Ref mux.v
read_verilog -container Ref parity_calc.v
read_verilog -container Ref Serializer.v
read_verilog -container Ref uart_tx_fsm.v
read_verilog -container Ref UART_TX.v
read_verilog -container Ref data_sampling.v
read_verilog -container Ref deserializer.v
read_verilog -container Ref edge_bit_counter.v
read_verilog -container Ref par_chk.v
read_verilog -container Ref stp_chk.v
read_verilog -container Ref strt_chk.v
read_verilog -container Ref uart_rx_fsm.v
read_verilog -container Ref UART_RX.v
read_verilog -container Ref UART.v
read_verilog -container Ref SYS_CTRL.v
read_verilog -container Ref SYS_TOP.v

# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design SYS_TOP
set_top SYS_TOP


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "/home/IC/Final_Project/Formality/Post_Syn/SYS_TOP_netlist.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design SYS_TOP
set_top SYS_TOP


###################################################################
#################### Implementation Container #####################
###################################################################

########################## Don't verify ###########################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
#set_dont_verify_points -type port Ref:/WORK/*/SI
#set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out



############################### contants #####################################

# all atpg enable (test_mode, scan_enable) are zero during formal compare

#test_mode
#set_constant Ref:/WORK/*/test_mode 0
#set_constant Imp:/WORK/*/test_mode 0

#scan_enable



###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"

########################### Start GUI ############################# 
#start_gui

