onbreak resume
onerror resume
vsim -novopt work.testbench6
add wave sim:/testbench6/u_filter6/clk
add wave sim:/testbench6/u_filter6/clk_enable
add wave sim:/testbench6/u_filter6/reset
add wave sim:/testbench6/u_filter6/filter_in
add wave sim:/testbench6/u_filter6/filter_out
add wave sim:/testbench6/filter_out_ref
run -all
