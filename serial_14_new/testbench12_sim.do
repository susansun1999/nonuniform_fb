onbreak resume
onerror resume
vsim -novopt work.testbench12
add wave sim:/testbench12/u_filter12/clk
add wave sim:/testbench12/u_filter12/clk_enable
add wave sim:/testbench12/u_filter12/reset
add wave sim:/testbench12/u_filter12/filter_in
add wave sim:/testbench12/u_filter12/filter_out
add wave sim:/testbench12/filter_out_ref
run -all
