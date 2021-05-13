onbreak resume
onerror resume
vsim -novopt work.testbench1
add wave sim:/testbench1/u_filter1/clk
add wave sim:/testbench1/u_filter1/clk_enable
add wave sim:/testbench1/u_filter1/reset
add wave sim:/testbench1/u_filter1/filter_in
add wave sim:/testbench1/u_filter1/filter_out
add wave sim:/testbench1/filter_out_ref
run -all
