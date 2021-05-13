onbreak resume
onerror resume
vsim -novopt work.testbench15
add wave sim:/testbench15/u_filter15/clk
add wave sim:/testbench15/u_filter15/clk_enable
add wave sim:/testbench15/u_filter15/reset
add wave sim:/testbench15/u_filter15/filter_in
add wave sim:/testbench15/u_filter15/filter_out
add wave sim:/testbench15/filter_out_ref
run -all
