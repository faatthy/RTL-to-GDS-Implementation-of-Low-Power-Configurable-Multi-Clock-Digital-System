
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

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
read_file -format $file_format SYS_TOP.v


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

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort high

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################
#change_name -hier -rule verilog
write_file -format verilog -hierarchy -output "netlists/SYS_TOP.ddc"
write_file -format verilog -hierarchy -output "netlists/SYS_TOP_netlist.v"
write_sdf  "sdf/SYS_TOP.sdf"
write_sdc  -nosplit "sdc/SYS_TOP.sdc"

####################### reporting ##########################################

report_area -hierarchy   >  "reports/area.rpt"
report_power -hierarchy > "reports/power.rpt"
report_timing -delay_type min -max_paths 20 > "reports/hold.rpt"
report_timing -delay_type max -max_paths 20 > "reports/setup.rpt"
report_clock -attributes > "reports/clocks.rpt"
report_constraint -all_violators -nosplit > "reports/constraints.rpt"

############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

################# starting graphical user interface #######################

#gui_start

#exit
