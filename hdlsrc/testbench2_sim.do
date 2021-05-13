onbreak resume
onerror resume
vsim -novopt work.testbench2
add wave sim:/testbench2/u_filter2/clk
add wave sim:/testbench2/u_filter2/clk_enable
add wave sim:/testbench2/u_filter2/reset
add wave sim:/testbench2/u_filter2/filter_in
add wave sim:/testbench2/u_filter2/filter_out
add wave sim:/testbench2/filter_out_ref
run -all
