onbreak resume
onerror resume
vsim -novopt work.testbench5
add wave sim:/testbench5/u_filter5/clk
add wave sim:/testbench5/u_filter5/clk_enable
add wave sim:/testbench5/u_filter5/reset
add wave sim:/testbench5/u_filter5/filter_in
add wave sim:/testbench5/u_filter5/filter_out
add wave sim:/testbench5/filter_out_ref
run -all
