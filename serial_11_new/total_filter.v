`include "filter1.v"
`include "filter2.v"
`include "filter3.v"
`include "filter4.v"
`include "filter5.v"
`include "filter6.v"
`include "filter7.v"
`include "filter8.v"
`include "filter9.v"
`include "filter10.v"
`include "filter11.v"
`include "filter12.v"
`include "filter13.v"
`include "filter14.v"
`include "filter15.v"
`include "filter16.v"

module total_filter(
                clock,
                clk_enable,
                reset,
                filter_in,
                filter_out
                );
    input   clock; 
    input   clk_enable; 
    input   reset; 
    input   signed [10:0] filter_in;        //sfix15_En14
    output  signed [28:0] filter_out [15:0]; //sfix37_En32

    reg     signed [10:0] delay_pipeline [0:118] ; // sfix13_En12
    wire    phase_55; // boolean

    control ctrl(.clock(clock),.reset(reset),.filter_in(filter_in),.phase_55(phase_55),.out(delay_pipeline));
    filterbank_core core(.clock(clock),.clk_enable(clk_enable),.reset(reset), .filter_in(filter_in), .delay_pipeline(delay_pipeline), .filter_out(filter_out),.phase_55(phase_55));

endmodule

module control  (
	input  clock, reset,
  input  signed [10:0] filter_in,        //sfix15_En14
	input  wire phase_55,
	output wire [10:0] out [0:118]
);
  reg     signed [10:0] registers [0:118] ; // sfix13_En12

	assign out[0] = registers[0];
	assign out[1] = registers[1];
	assign out[2] = registers[2];
	assign out[3] = registers[3];
	assign out[4] = registers[4];
	assign out[5] = registers[5];
	assign out[6] = registers[6];
	assign out[7] = registers[7];
	assign out[8] = registers[8];
	assign out[9] = registers[9];
	assign out[10] = registers[10];
	assign out[11] = registers[11];
	assign out[12] = registers[12];
	assign out[13] = registers[13];
	assign out[14] = registers[14];
	assign out[15] = registers[15];
	assign out[16] = registers[16];
	assign out[17] = registers[17];
	assign out[18] = registers[18];
	assign out[19] = registers[19];
	assign out[20] = registers[20];
	assign out[21] = registers[21];
	assign out[22] = registers[22];
	assign out[23] = registers[23];
	assign out[24] = registers[24];
	assign out[25] = registers[25];
	assign out[26] = registers[26];
	assign out[27] = registers[27];
	assign out[28] = registers[28];
	assign out[29] = registers[29];
	assign out[30] = registers[30];
	assign out[31] = registers[31];
	assign out[32] = registers[32];
	assign out[33] = registers[33];
	assign out[34] = registers[34];
	assign out[35] = registers[35];
	assign out[36] = registers[36];
	assign out[37] = registers[37];
	assign out[38] = registers[38];
	assign out[39] = registers[39];
	assign out[40] = registers[40];
	assign out[41] = registers[41];
	assign out[42] = registers[42];
	assign out[43] = registers[43];
	assign out[44] = registers[44];
	assign out[45] = registers[45];
	assign out[46] = registers[46];
	assign out[47] = registers[47];
	assign out[48] = registers[48];
	assign out[49] = registers[49];
	assign out[50] = registers[50];
	assign out[51] = registers[51];
	assign out[52] = registers[52];
	assign out[53] = registers[53];
	assign out[54] = registers[54];
	assign out[55] = registers[55];
	assign out[56] = registers[56];
	assign out[57] = registers[57];
	assign out[58] = registers[58];
	assign out[59] = registers[59];
	assign out[60] = registers[60];
	assign out[61] = registers[61];
	assign out[62] = registers[62];
	assign out[63] = registers[63];
	assign out[64] = registers[64];
	assign out[65] = registers[65];
	assign out[66] = registers[66];
	assign out[67] = registers[67];
	assign out[68] = registers[68];
	assign out[69] = registers[69];
	assign out[70] = registers[70];
	assign out[71] = registers[71];
	assign out[72] = registers[72];
	assign out[73] = registers[73];
	assign out[74] = registers[74];
	assign out[75] = registers[75];
	assign out[76] = registers[76];
	assign out[77] = registers[77];
	assign out[78] = registers[78];
	assign out[79] = registers[79];
	assign out[80] = registers[80];
	assign out[81] = registers[81];
	assign out[82] = registers[82];
	assign out[83] = registers[83];
	assign out[84] = registers[84];
	assign out[85] = registers[85];
	assign out[86] = registers[86];
	assign out[87] = registers[87];
	assign out[88] = registers[88];
	assign out[89] = registers[89];
	assign out[90] = registers[90];
	assign out[91] = registers[91];
	assign out[92] = registers[92];
	assign out[93] = registers[93];
	assign out[94] = registers[94];
	assign out[95] = registers[95];
	assign out[96] = registers[96];
	assign out[97] = registers[97];
	assign out[98] = registers[98];
	assign out[99] = registers[99];
	assign out[100] = registers[100];
	assign out[101] = registers[101];
	assign out[102] = registers[102];
	assign out[103] = registers[103];
	assign out[104] = registers[104];
	assign out[105] = registers[105];
	assign out[106] = registers[106];
	assign out[107] = registers[107];
	assign out[108] = registers[108];
	assign out[109] = registers[109];
	assign out[110] = registers[110];
	assign out[111] = registers[111];
	assign out[112] = registers[112];
	assign out[113] = registers[113];
	assign out[114] = registers[114];
	assign out[115] = registers[115];
	assign out[116] = registers[116];
	assign out[117] = registers[117];
	assign out[118] = registers[118];
  
  logic clk_en;
  assign clk_en = clock & phase_55;

	always_ff @(posedge clk_en) begin
		if (reset == 1) begin
			for(int i=0; i<119; i=i+1) registers[i] <= 'b0;
		end
		else begin
      registers[1:118] <= registers[0:117];
      registers[0] <= filter_in;
		end
	end
endmodule

module filterbank_core(
  input clock,clk_enable,reset,
  input signed [10:0] filter_in,        //sfix15_En14
  input  signed [10:0] delay_pipeline [0:118], // sfix14_En13
  output  signed [28:0] filter_out [15:0], //sfix37_En32
  output wire phase_55
);

  filter1 f1(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[0]), .delay_pipeline(delay_pipeline));
  filter2 f2(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[1]), .delay_pipeline(delay_pipeline));
  filter3 f3(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[2]), .delay_pipeline(delay_pipeline));
  filter4 f4(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[3]), .delay_pipeline(delay_pipeline));
  filter5 f5(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[4]), .delay_pipeline(delay_pipeline));
  filter6 f6(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[5]), .delay_pipeline(delay_pipeline));
  filter7 f7(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[6]), .delay_pipeline(delay_pipeline));
  filter8 f8(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[7]), .delay_pipeline(delay_pipeline));
  filter9 f9(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[8]), .delay_pipeline(delay_pipeline));
  filter10 f10(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[9]), .delay_pipeline(delay_pipeline));
  filter11 f11(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[10]), .delay_pipeline(delay_pipeline));
  filter12 f12(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[11]), .delay_pipeline(delay_pipeline));
  filter13 f13(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[12]), .delay_pipeline(delay_pipeline),.phase_55(phase_55));
  filter14 f14(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[13]), .delay_pipeline(delay_pipeline));
  filter15 f15(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[14]), .delay_pipeline(delay_pipeline));
  filter16 f16(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[15]), .delay_pipeline(delay_pipeline));

endmodule