onbreak resume
onerror resume
vsim -novopt work.testbench3
add wave sim:/testbench3/u_filter3/clk
add wave sim:/testbench3/u_filter3/clk_enable
add wave sim:/testbench3/u_filter3/reset
add wave sim:/testbench3/u_filter3/filter_in
add wave sim:/testbench3/u_filter3/filter_out
add wave sim:/testbench3/filter_out_ref
run -all
