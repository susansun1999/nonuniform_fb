#/***********************************************************/
#/*   FILE        : power.tcl                               */
#/*   Description : Default Synopsys Design Compiler Script */
#/*   Usage       : dc_shell -tcl_mode -f default.tcl       */
#/*   You'll need to minimally set design_name & read files */
#/***********************************************************/

#/***********************************************************/
#/* The following five lines must be updated for every      */
#/* new design                                              */
#/***********************************************************/
# will need to change next line
set search_path [ list "./" "/afs/umich.edu/user/s/u/sunsusan/Desktop/SC_FIR_hardware_syn/Nangate/" ]
set target_library "NangateOpenCellLibrary.db"
set link_library [concat  "*" $target_library]
set power_enable_analysis true
# will need to change next line
set clock_name clock
set sys_clk $clock_name
set reset_name reset
# will need to change next line
set CLK_PERIOD 1041

#read_verilog "${VER_DIR}/${filenamer}.v"
#read_verilog "vg/comps/vdc.vg"
#read_verilog "vg/filters/cemux_n10_q10_M100_d0_s0_g1.vg"

# will have to change next line
read_verilog "vg/banks/cemux_n10_q10_M119_d0_s0_g0.vg"

# will need to change next line
current_design total_filter
link_design

create_clock -period $CLK_PERIOD -name $sys_clk [find port $sys_clk]
# will have to change strip_path on next line
read_saif rand.saif -strip_path "testbench/filt"

update_power

report_power -verbose -nosplit -hierarchy -levels 1
quit
