onbreak resume
onerror resume
vsim -novopt work.testbench13
add wave sim:/testbench13/u_filter13/clk
add wave sim:/testbench13/u_filter13/clk_enable
add wave sim:/testbench13/u_filter13/reset
add wave sim:/testbench13/u_filter13/filter_in
add wave sim:/testbench13/u_filter13/filter_out
add wave sim:/testbench13/filter_out_ref
run -all
