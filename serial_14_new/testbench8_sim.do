onbreak resume
onerror resume
vsim -novopt work.testbench8
add wave sim:/testbench8/u_filter8/clk
add wave sim:/testbench8/u_filter8/clk_enable
add wave sim:/testbench8/u_filter8/reset
add wave sim:/testbench8/u_filter8/filter_in
add wave sim:/testbench8/u_filter8/filter_out
add wave sim:/testbench8/filter_out_ref
run -all
