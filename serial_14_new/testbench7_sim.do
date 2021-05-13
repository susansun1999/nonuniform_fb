onbreak resume
onerror resume
vsim -novopt work.testbench7
add wave sim:/testbench7/u_filter7/clk
add wave sim:/testbench7/u_filter7/clk_enable
add wave sim:/testbench7/u_filter7/reset
add wave sim:/testbench7/u_filter7/filter_in
add wave sim:/testbench7/u_filter7/filter_out
add wave sim:/testbench7/filter_out_ref
run -all
