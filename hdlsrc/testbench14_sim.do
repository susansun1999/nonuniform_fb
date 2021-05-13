onbreak resume
onerror resume
vsim -novopt work.testbench14
add wave sim:/testbench14/u_filter14/clk
add wave sim:/testbench14/u_filter14/clk_enable
add wave sim:/testbench14/u_filter14/reset
add wave sim:/testbench14/u_filter14/filter_in
add wave sim:/testbench14/u_filter14/filter_out
add wave sim:/testbench14/filter_out_ref
run -all
