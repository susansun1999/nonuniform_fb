onbreak resume
onerror resume
vsim -novopt work.testbench16
add wave sim:/testbench16/u_filter16/clk
add wave sim:/testbench16/u_filter16/clk_enable
add wave sim:/testbench16/u_filter16/reset
add wave sim:/testbench16/u_filter16/filter_in
add wave sim:/testbench16/u_filter16/filter_out
add wave sim:/testbench16/filter_out_ref
run -all
