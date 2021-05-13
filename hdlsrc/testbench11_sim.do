onbreak resume
onerror resume
vsim -novopt work.testbench11
add wave sim:/testbench11/u_filter11/clk
add wave sim:/testbench11/u_filter11/clk_enable
add wave sim:/testbench11/u_filter11/reset
add wave sim:/testbench11/u_filter11/filter_in
add wave sim:/testbench11/u_filter11/filter_out
add wave sim:/testbench11/filter_out_ref
run -all
