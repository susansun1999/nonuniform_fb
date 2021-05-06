module testbench();
    logic   clock; 
    logic   clk_enable; 
    logic   reset; 
    logic   signed [12:0] filter_in;        //sfix15_En14
    logic  signed [32:0] filter_out [15:0]; //sfix37_En32

    total_filter mytotal_filter (.clock,.clk_enable,.reset,.filter_in,.filter_out);

always begin
	#500;
	clock=~clock;
end
// the clock cycle is 1000

initial begin
		//$vcdpluson;
		$monitor("Time:%4.0f",
				$time);
		clock=0;

        $finish;
	end

endmodule
