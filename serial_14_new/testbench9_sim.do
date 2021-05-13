onbreak resume
onerror resume
vsim -novopt work.testbench9
add wave sim:/testbench9/u_filter9/clk
add wave sim:/testbench9/u_filter9/clk_enable
add wave sim:/testbench9/u_filter9/reset
add wave sim:/testbench9/u_filter9/filter_in
add wave sim:/testbench9/u_filter9/filter_out
add wave sim:/testbench9/filter_out_ref
run -all
