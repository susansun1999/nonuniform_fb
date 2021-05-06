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
    input   signed [12:0] filter_in;        //sfix15_En14
    output  signed [32:0] filter_out [15:0]; //sfix37_En32

    reg     signed [12:0] delay_pipeline [0:118] ; // sfix13_En12

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
    filter13 f13(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[12]), .delay_pipeline(delay_pipeline));
    filter14 f14(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[13]), .delay_pipeline(delay_pipeline));
    filter15 f15(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[14]), .delay_pipeline(delay_pipeline));
    filter16 f16(.clk(clock), .clk_enable(clk_enable), .reset(reset), .filter_in(filter_in), .filter_out(filter_out[15]), .delay_pipeline(delay_pipeline));

  // Block Statements
  always @( posedge clock or posedge reset)
    begin: Delay_Pipeline_process
      if (reset == 1'b1) begin
        delay_pipeline[0] <= 0;
        delay_pipeline[1] <= 0;
        delay_pipeline[2] <= 0;
        delay_pipeline[3] <= 0;
        delay_pipeline[4] <= 0;
        delay_pipeline[5] <= 0;
        delay_pipeline[6] <= 0;
        delay_pipeline[7] <= 0;
        delay_pipeline[8] <= 0;
        delay_pipeline[9] <= 0;
        delay_pipeline[10] <= 0;
        delay_pipeline[11] <= 0;
        delay_pipeline[12] <= 0;
        delay_pipeline[13] <= 0;
        delay_pipeline[14] <= 0;
        delay_pipeline[15] <= 0;
        delay_pipeline[16] <= 0;
        delay_pipeline[17] <= 0;
        delay_pipeline[18] <= 0;
        delay_pipeline[19] <= 0;
        delay_pipeline[20] <= 0;
        delay_pipeline[21] <= 0;
        delay_pipeline[22] <= 0;
        delay_pipeline[23] <= 0;
        delay_pipeline[24] <= 0;
        delay_pipeline[25] <= 0;
        delay_pipeline[26] <= 0;
        delay_pipeline[27] <= 0;
        delay_pipeline[28] <= 0;
        delay_pipeline[29] <= 0;
        delay_pipeline[30] <= 0;
        delay_pipeline[31] <= 0;
        delay_pipeline[32] <= 0;
        delay_pipeline[33] <= 0;
        delay_pipeline[34] <= 0;
        delay_pipeline[35] <= 0;
        delay_pipeline[36] <= 0;
        delay_pipeline[37] <= 0;
        delay_pipeline[38] <= 0;
        delay_pipeline[39] <= 0;
        delay_pipeline[40] <= 0;
        delay_pipeline[41] <= 0;
        delay_pipeline[42] <= 0;
        delay_pipeline[43] <= 0;
        delay_pipeline[44] <= 0;
        delay_pipeline[45] <= 0;
        delay_pipeline[46] <= 0;
        delay_pipeline[47] <= 0;
        delay_pipeline[48] <= 0;
        delay_pipeline[49] <= 0;
        delay_pipeline[50] <= 0;
        delay_pipeline[51] <= 0;
        delay_pipeline[52] <= 0;
        delay_pipeline[53] <= 0;
        delay_pipeline[54] <= 0;
        delay_pipeline[55] <= 0;
        delay_pipeline[56] <= 0;
        delay_pipeline[57] <= 0;
        delay_pipeline[58] <= 0;
        delay_pipeline[59] <= 0;
        delay_pipeline[60] <= 0;
        delay_pipeline[61] <= 0;
        delay_pipeline[62] <= 0;
        delay_pipeline[63] <= 0;
        delay_pipeline[64] <= 0;
        delay_pipeline[65] <= 0;
        delay_pipeline[66] <= 0;
        delay_pipeline[67] <= 0;
        delay_pipeline[68] <= 0;
        delay_pipeline[69] <= 0;
        delay_pipeline[70] <= 0;
        delay_pipeline[71] <= 0;
        delay_pipeline[72] <= 0;
        delay_pipeline[73] <= 0;
        delay_pipeline[74] <= 0;
        delay_pipeline[75] <= 0;
        delay_pipeline[76] <= 0;
        delay_pipeline[77] <= 0;
        delay_pipeline[78] <= 0;
        delay_pipeline[79] <= 0;
        delay_pipeline[80] <= 0;
        delay_pipeline[81] <= 0;
        delay_pipeline[82] <= 0;
        delay_pipeline[83] <= 0;
        delay_pipeline[84] <= 0;
        delay_pipeline[85] <= 0;
        delay_pipeline[86] <= 0;
        delay_pipeline[87] <= 0;
        delay_pipeline[88] <= 0;
        delay_pipeline[89] <= 0;
        delay_pipeline[90] <= 0;
        delay_pipeline[91] <= 0;
        delay_pipeline[92] <= 0;
        delay_pipeline[93] <= 0;
        delay_pipeline[94] <= 0;
        delay_pipeline[95] <= 0;
        delay_pipeline[96] <= 0;
        delay_pipeline[97] <= 0;
        delay_pipeline[98] <= 0;
        delay_pipeline[99] <= 0;
        delay_pipeline[100] <= 0;
        delay_pipeline[101] <= 0;
        delay_pipeline[102] <= 0;
        delay_pipeline[103] <= 0;
        delay_pipeline[104] <= 0;
        delay_pipeline[105] <= 0;
        delay_pipeline[106] <= 0;
        delay_pipeline[107] <= 0;
        delay_pipeline[108] <= 0;
        delay_pipeline[109] <= 0;
        delay_pipeline[110] <= 0;
        delay_pipeline[111] <= 0;
        delay_pipeline[112] <= 0;
        delay_pipeline[113] <= 0;
        delay_pipeline[114] <= 0;
        delay_pipeline[115] <= 0;
        delay_pipeline[116] <= 0;
        delay_pipeline[117] <= 0;
        delay_pipeline[118] <= 0;
      end
      else begin
        if (clk_enable == 1'b1) begin
          delay_pipeline[0] <= filter_in;
          delay_pipeline[1] <= delay_pipeline[0];
          delay_pipeline[2] <= delay_pipeline[1];
          delay_pipeline[3] <= delay_pipeline[2];
          delay_pipeline[4] <= delay_pipeline[3];
          delay_pipeline[5] <= delay_pipeline[4];
          delay_pipeline[6] <= delay_pipeline[5];
          delay_pipeline[7] <= delay_pipeline[6];
          delay_pipeline[8] <= delay_pipeline[7];
          delay_pipeline[9] <= delay_pipeline[8];
          delay_pipeline[10] <= delay_pipeline[9];
          delay_pipeline[11] <= delay_pipeline[10];
          delay_pipeline[12] <= delay_pipeline[11];
          delay_pipeline[13] <= delay_pipeline[12];
          delay_pipeline[14] <= delay_pipeline[13];
          delay_pipeline[15] <= delay_pipeline[14];
          delay_pipeline[16] <= delay_pipeline[15];
          delay_pipeline[17] <= delay_pipeline[16];
          delay_pipeline[18] <= delay_pipeline[17];
          delay_pipeline[19] <= delay_pipeline[18];
          delay_pipeline[20] <= delay_pipeline[19];
          delay_pipeline[21] <= delay_pipeline[20];
          delay_pipeline[22] <= delay_pipeline[21];
          delay_pipeline[23] <= delay_pipeline[22];
          delay_pipeline[24] <= delay_pipeline[23];
          delay_pipeline[25] <= delay_pipeline[24];
          delay_pipeline[26] <= delay_pipeline[25];
          delay_pipeline[27] <= delay_pipeline[26];
          delay_pipeline[28] <= delay_pipeline[27];
          delay_pipeline[29] <= delay_pipeline[28];
          delay_pipeline[30] <= delay_pipeline[29];
          delay_pipeline[31] <= delay_pipeline[30];
          delay_pipeline[32] <= delay_pipeline[31];
          delay_pipeline[33] <= delay_pipeline[32];
          delay_pipeline[34] <= delay_pipeline[33];
          delay_pipeline[35] <= delay_pipeline[34];
          delay_pipeline[36] <= delay_pipeline[35];
          delay_pipeline[37] <= delay_pipeline[36];
          delay_pipeline[38] <= delay_pipeline[37];
          delay_pipeline[39] <= delay_pipeline[38];
          delay_pipeline[40] <= delay_pipeline[39];
          delay_pipeline[41] <= delay_pipeline[40];
          delay_pipeline[42] <= delay_pipeline[41];
          delay_pipeline[43] <= delay_pipeline[42];
          delay_pipeline[44] <= delay_pipeline[43];
          delay_pipeline[45] <= delay_pipeline[44];
          delay_pipeline[46] <= delay_pipeline[45];
          delay_pipeline[47] <= delay_pipeline[46];
          delay_pipeline[48] <= delay_pipeline[47];
          delay_pipeline[49] <= delay_pipeline[48];
          delay_pipeline[50] <= delay_pipeline[49];
          delay_pipeline[51] <= delay_pipeline[50];
          delay_pipeline[52] <= delay_pipeline[51];
          delay_pipeline[53] <= delay_pipeline[52];
          delay_pipeline[54] <= delay_pipeline[53];
          delay_pipeline[55] <= delay_pipeline[54];
          delay_pipeline[56] <= delay_pipeline[55];
          delay_pipeline[57] <= delay_pipeline[56];
          delay_pipeline[58] <= delay_pipeline[57];
          delay_pipeline[59] <= delay_pipeline[58];
          delay_pipeline[60] <= delay_pipeline[59];
          delay_pipeline[61] <= delay_pipeline[60];
          delay_pipeline[62] <= delay_pipeline[61];
          delay_pipeline[63] <= delay_pipeline[62];
          delay_pipeline[64] <= delay_pipeline[63];
          delay_pipeline[65] <= delay_pipeline[64];
          delay_pipeline[66] <= delay_pipeline[65];
          delay_pipeline[67] <= delay_pipeline[66];
          delay_pipeline[68] <= delay_pipeline[67];
          delay_pipeline[69] <= delay_pipeline[68];
          delay_pipeline[70] <= delay_pipeline[69];
          delay_pipeline[71] <= delay_pipeline[70];
          delay_pipeline[72] <= delay_pipeline[71];
          delay_pipeline[73] <= delay_pipeline[72];
          delay_pipeline[74] <= delay_pipeline[73];
          delay_pipeline[75] <= delay_pipeline[74];
          delay_pipeline[76] <= delay_pipeline[75];
          delay_pipeline[77] <= delay_pipeline[76];
          delay_pipeline[78] <= delay_pipeline[77];
          delay_pipeline[79] <= delay_pipeline[78];
          delay_pipeline[80] <= delay_pipeline[79];
          delay_pipeline[81] <= delay_pipeline[80];
          delay_pipeline[82] <= delay_pipeline[81];
          delay_pipeline[83] <= delay_pipeline[82];
          delay_pipeline[84] <= delay_pipeline[83];
          delay_pipeline[85] <= delay_pipeline[84];
          delay_pipeline[86] <= delay_pipeline[85];
          delay_pipeline[87] <= delay_pipeline[86];
          delay_pipeline[88] <= delay_pipeline[87];
          delay_pipeline[89] <= delay_pipeline[88];
          delay_pipeline[90] <= delay_pipeline[89];
          delay_pipeline[91] <= delay_pipeline[90];
          delay_pipeline[92] <= delay_pipeline[91];
          delay_pipeline[93] <= delay_pipeline[92];
          delay_pipeline[94] <= delay_pipeline[93];
          delay_pipeline[95] <= delay_pipeline[94];
          delay_pipeline[96] <= delay_pipeline[95];
          delay_pipeline[97] <= delay_pipeline[96];
          delay_pipeline[98] <= delay_pipeline[97];
          delay_pipeline[99] <= delay_pipeline[98];
          delay_pipeline[100] <= delay_pipeline[99];
          delay_pipeline[101] <= delay_pipeline[100];
          delay_pipeline[102] <= delay_pipeline[101];
          delay_pipeline[103] <= delay_pipeline[102];
          delay_pipeline[104] <= delay_pipeline[103];
          delay_pipeline[105] <= delay_pipeline[104];
          delay_pipeline[106] <= delay_pipeline[105];
          delay_pipeline[107] <= delay_pipeline[106];
          delay_pipeline[108] <= delay_pipeline[107];
          delay_pipeline[109] <= delay_pipeline[108];
          delay_pipeline[110] <= delay_pipeline[109];
          delay_pipeline[111] <= delay_pipeline[110];
          delay_pipeline[112] <= delay_pipeline[111];
          delay_pipeline[113] <= delay_pipeline[112];
          delay_pipeline[114] <= delay_pipeline[113];
          delay_pipeline[115] <= delay_pipeline[114];
          delay_pipeline[116] <= delay_pipeline[115];
          delay_pipeline[117] <= delay_pipeline[116];
          delay_pipeline[118] <= delay_pipeline[117];
        end
      end
    end // Delay_Pipeline_process
endmodule
