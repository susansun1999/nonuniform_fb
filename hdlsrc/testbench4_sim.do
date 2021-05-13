onbreak resume
onerror resume
vsim -novopt work.testbench4
add wave sim:/testbench4/u_filter4/clk
add wave sim:/testbench4/u_filter4/clk_enable
add wave sim:/testbench4/u_filter4/reset
add wave sim:/testbench4/u_filter4/filter_in
add wave sim:/testbench4/u_filter4/filter_out
add wave sim:/testbench4/filter_out_ref
run -all
