
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP_dft

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable
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

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

read_file -format $file_format ALU.v
read_file -format $file_format BIT_SYNC.v
read_file -format $file_format fifo_mem.v
read_file -format $file_format fifo_rd.v
read_file -format $file_format fifo_wr.v
read_file -format $file_format Async_fifo.v
read_file -format $file_format CLKDIV_MUX.v
read_file -format $file_format ClkDiv.v
read_file -format $file_format CLK_GATE.v
read_file -format $file_format DATA_SYNC.v
read_file -format $file_format PULSE_GEN.v
read_file -format $file_format RegFile.v
read_file -format $file_format RST_SYNC.v
read_file -format $file_format mux.v
read_file -format $file_format parity_calc.v
read_file -format $file_format Serializer.v
read_file -format $file_format uart_tx_fsm.v
read_file -format $file_format UART_TX.v
read_file -format $file_format data_sampling.v
read_file -format $file_format deserializer.v
read_file -format $file_format edge_bit_counter.v
read_file -format $file_format par_chk.v
read_file -format $file_format stp_chk.v
read_file -format $file_format strt_chk.v
read_file -format $file_format uart_rx_fsm.v
read_file -format $file_format UART_RX.v
read_file -format $file_format UART.v
read_file -format $file_format SYS_CTRL.v
read_file -format $file_format mux2X1.v
read_file -format $file_format SYS_TOP_dft.v


###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> "reports/check_design.rpt"

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -clock_mixing no_mix  -style multiplexed_flip_flop -replace true -max_length 100  

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile_ultra -scan

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {50 100}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

############################# Create Test Protocol #####################
                                           
create_test_protocol

###################### Pre-DFT Design Rule Checking ####################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ###############################

insert_dft

######################## Optimize Logic post DFT #######################

compile_ultra -scan -incremental

###################### Design Rule Checking post DFT ###################

dft_drc -verbose -coverage_estimate > "reports/dft_drc_post_dft.rpt"
report_port > "reports/ports.rpt"


#############################################################################
# Write out Design after initial compile
#############################################################################
set_svf -off

#Avoid Writing assign statements in the netlist
change_name -hier -rule verilog
write_file -format verilog -hierarchy -output "netlists/SYS_TOP_dft_netlist.v"
write_file -format verilog -hierarchy -output "netlists/SYS_TOP_dft.ddc"
write_sdf  "sdf/SYS_TOP_dft.sdf"
write_sdc  -nosplit "sdc/SYS_TOP_dft.sdc"
####################### reporting ##########################################

report_area -hierarchy > "reports/area_dft.rpt"
report_power -hierarchy > "reports/power_dft.rpt"
report_timing -delay_type min -max_paths 20 > "reports/hold_dft.rpt"
report_timing -delay_type max -max_paths 20 > "reports/setup_dft.rpt"
report_clock -attributes > "reports/clocks_dft.rpt"
report_constraint -all_violators > "reports/constraints_dft.rpt"

################# starting graphical user interface #######################

##gui_start

#exit
