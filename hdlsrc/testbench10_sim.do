onbreak resume
onerror resume
vsim -novopt work.testbench10
add wave sim:/testbench10/u_filter10/clk
add wave sim:/testbench10/u_filter10/clk_enable
add wave sim:/testbench10/u_filter10/reset
add wave sim:/testbench10/u_filter10/filter_in
add wave sim:/testbench10/u_filter10/filter_out
add wave sim:/testbench10/filter_out_ref
run -all
