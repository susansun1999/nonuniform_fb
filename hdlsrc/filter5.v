// -------------------------------------------------------------
//
// Module: filter5
// Generated by MATLAB(R) 9.8 and Filter Design HDL Coder 3.1.7.
// Generated on: 2021-05-13 12:12:28
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter5
// SerialPartition: 58
// InputDataType: numerictype(1,13,12)
// TargetLanguage: Verilog
// TestBenchName: testbench5
// TestBenchStimulus: ramp impulse 

// -------------------------------------------------------------
// HDL Implementation    : Fully Serial
// Folding Factor        : 58
// -------------------------------------------------------------
// Filter Settings:
//
// Discrete-Time FIR Filter (real)
// -------------------------------
// Filter Structure  : Direct-Form Symmetric FIR
// Filter Length     : 119
// Stable            : Yes
// Linear Phase      : Yes (Type 1)
// Arithmetic        : fixed
// Numerator         : s13,15 -> [-1.250000e-01 1.250000e-01)
// -------------------------------------------------------------
// Multipliers           : 1



`timescale 1 ns / 1 ns

module filter5
               (
                clk,
                clk_enable,
                reset,
                filter_in,
                filter_out
                );

  input   clk; 
  input   clk_enable; 
  input   reset; 
  input   signed [12:0] filter_in; //sfix13_En12
  output  signed [32:0] filter_out; //sfix33_En27

////////////////////////////////////////////////////////////////
//Module Architecture: filter5
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter signed [12:0] coeff1 = 13'b1111111111111; //sfix13_En15
  parameter signed [12:0] coeff2 = 13'b1111111111111; //sfix13_En15
  parameter signed [12:0] coeff3 = 13'b1111111111111; //sfix13_En15
  parameter signed [12:0] coeff4 = 13'b1111111111111; //sfix13_En15
  parameter signed [12:0] coeff5 = 13'b0000000000000; //sfix13_En15
  parameter signed [12:0] coeff6 = 13'b0000000000011; //sfix13_En15
  parameter signed [12:0] coeff7 = 13'b0000000000110; //sfix13_En15
  parameter signed [12:0] coeff8 = 13'b0000000001010; //sfix13_En15
  parameter signed [12:0] coeff9 = 13'b0000000001100; //sfix13_En15
  parameter signed [12:0] coeff10 = 13'b0000000001101; //sfix13_En15
  parameter signed [12:0] coeff11 = 13'b0000000001001; //sfix13_En15
  parameter signed [12:0] coeff12 = 13'b0000000000010; //sfix13_En15
  parameter signed [12:0] coeff13 = 13'b1111111110110; //sfix13_En15
  parameter signed [12:0] coeff14 = 13'b1111111101001; //sfix13_En15
  parameter signed [12:0] coeff15 = 13'b1111111011101; //sfix13_En15
  parameter signed [12:0] coeff16 = 13'b1111111010110; //sfix13_En15
  parameter signed [12:0] coeff17 = 13'b1111111010111; //sfix13_En15
  parameter signed [12:0] coeff18 = 13'b1111111100001; //sfix13_En15
  parameter signed [12:0] coeff19 = 13'b1111111110100; //sfix13_En15
  parameter signed [12:0] coeff20 = 13'b0000000001011; //sfix13_En15
  parameter signed [12:0] coeff21 = 13'b0000000100010; //sfix13_En15
  parameter signed [12:0] coeff22 = 13'b0000000110010; //sfix13_En15
  parameter signed [12:0] coeff23 = 13'b0000000111000; //sfix13_En15
  parameter signed [12:0] coeff24 = 13'b0000000110000; //sfix13_En15
  parameter signed [12:0] coeff25 = 13'b0000000100000; //sfix13_En15
  parameter signed [12:0] coeff26 = 13'b0000000001100; //sfix13_En15
  parameter signed [12:0] coeff27 = 13'b1111111111111; //sfix13_En15
  parameter signed [12:0] coeff28 = 13'b0000000000000; //sfix13_En15
  parameter signed [12:0] coeff29 = 13'b0000000010010; //sfix13_En15
  parameter signed [12:0] coeff30 = 13'b0000000110001; //sfix13_En15
  parameter signed [12:0] coeff31 = 13'b0000001010010; //sfix13_En15
  parameter signed [12:0] coeff32 = 13'b0000001100100; //sfix13_En15
  parameter signed [12:0] coeff33 = 13'b0000001010101; //sfix13_En15
  parameter signed [12:0] coeff34 = 13'b0000000010111; //sfix13_En15
  parameter signed [12:0] coeff35 = 13'b1111110101011; //sfix13_En15
  parameter signed [12:0] coeff36 = 13'b1111100011110; //sfix13_En15
  parameter signed [12:0] coeff37 = 13'b1111010010000; //sfix13_En15
  parameter signed [12:0] coeff38 = 13'b1111000101000; //sfix13_En15
  parameter signed [12:0] coeff39 = 13'b1111000010011; //sfix13_En15
  parameter signed [12:0] coeff40 = 13'b1111001101111; //sfix13_En15
  parameter signed [12:0] coeff41 = 13'b1111101000111; //sfix13_En15
  parameter signed [12:0] coeff42 = 13'b0000010000110; //sfix13_En15
  parameter signed [12:0] coeff43 = 13'b0000111111001; //sfix13_En15
  parameter signed [12:0] coeff44 = 13'b0001101010011; //sfix13_En15
  parameter signed [12:0] coeff45 = 13'b0010000111111; //sfix13_En15
  parameter signed [12:0] coeff46 = 13'b0010001110010; //sfix13_En15
  parameter signed [12:0] coeff47 = 13'b0001110111111; //sfix13_En15
  parameter signed [12:0] coeff48 = 13'b0001000101011; //sfix13_En15
  parameter signed [12:0] coeff49 = 13'b1111111101010; //sfix13_En15
  parameter signed [12:0] coeff50 = 13'b1110101100011; //sfix13_En15
  parameter signed [12:0] coeff51 = 13'b1101100010101; //sfix13_En15
  parameter signed [12:0] coeff52 = 13'b1100110000010; //sfix13_En15
  parameter signed [12:0] coeff53 = 13'b1100100001111; //sfix13_En15
  parameter signed [12:0] coeff54 = 13'b1100111101010; //sfix13_En15
  parameter signed [12:0] coeff55 = 13'b1101111111110; //sfix13_En15
  parameter signed [12:0] coeff56 = 13'b1111011110011; //sfix13_En15
  parameter signed [12:0] coeff57 = 13'b0001000111011; //sfix13_En15
  parameter signed [12:0] coeff58 = 13'b0010100110011; //sfix13_En15
  parameter signed [12:0] coeff59 = 13'b0011101000011; //sfix13_En15
  parameter signed [12:0] coeff60 = 13'b0100000000000; //sfix13_En15

  parameter signed [12:0] const_zero = 13'b0000000000000; //sfix13_En12
  // Signals
  reg  [5:0] cur_count; // ufix6
  wire phase_57; // boolean
  wire phase_0; // boolean
  reg  signed [12:0] delay_pipeline [0:118] ; // sfix13_En12
  wire signed [12:0] preaddmux_a1; // sfix13_En12
  wire signed [12:0] preaddmux_b1; // sfix13_En12
  wire signed [13:0] tapsum_1; // sfix14_En12
  wire signed [12:0] add_signext; // sfix13_En12
  wire signed [12:0] add_signext_1; // sfix13_En12
  wire signed [13:0] tapsum_mcand_1; // sfix14_En12
  reg  signed [32:0] acc_final; // sfix33_En27
  reg  signed [32:0] acc_out_1; // sfix33_En27
  wire signed [26:0] product_1; // sfix27_En27
  wire signed [12:0] product_1_mux; // sfix13_En15
  wire signed [32:0] prod_typeconvert_1; // sfix33_En27
  wire signed [32:0] acc_sum_1; // sfix33_En27
  wire signed [32:0] acc_in_1; // sfix33_En27
  wire signed [32:0] add_signext_2; // sfix33_En27
  wire signed [32:0] add_signext_3; // sfix33_En27
  wire signed [33:0] add_temp; // sfix34_En27
  reg  signed [32:0] output_register; // sfix33_En27

  // Block Statements
  always @ (posedge clk or posedge reset)
    begin: Counter_process
      if (reset == 1'b1) begin
        cur_count <= 6'b111001;
      end
      else begin
        if (clk_enable == 1'b1) begin
          if (cur_count >= 6'b111001) begin
            cur_count <= 6'b000000;
          end
          else begin
            cur_count <= cur_count + 6'b000001;
          end
        end
      end
    end // Counter_process

  assign  phase_57 = (cur_count == 6'b111001 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

  assign  phase_0 = (cur_count == 6'b000000 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

  always @( posedge clk or posedge reset)
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
        if (phase_57 == 1'b1) begin
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


  assign preaddmux_a1 = (cur_count == 6'b000000) ? delay_pipeline[0] :
                       (cur_count == 6'b000001) ? delay_pipeline[1] :
                       (cur_count == 6'b000010) ? delay_pipeline[2] :
                       (cur_count == 6'b000011) ? delay_pipeline[3] :
                       (cur_count == 6'b000100) ? delay_pipeline[5] :
                       (cur_count == 6'b000101) ? delay_pipeline[6] :
                       (cur_count == 6'b000110) ? delay_pipeline[7] :
                       (cur_count == 6'b000111) ? delay_pipeline[8] :
                       (cur_count == 6'b001000) ? delay_pipeline[9] :
                       (cur_count == 6'b001001) ? delay_pipeline[10] :
                       (cur_count == 6'b001010) ? delay_pipeline[11] :
                       (cur_count == 6'b001011) ? delay_pipeline[12] :
                       (cur_count == 6'b001100) ? delay_pipeline[13] :
                       (cur_count == 6'b001101) ? delay_pipeline[14] :
                       (cur_count == 6'b001110) ? delay_pipeline[15] :
                       (cur_count == 6'b001111) ? delay_pipeline[16] :
                       (cur_count == 6'b010000) ? delay_pipeline[17] :
                       (cur_count == 6'b010001) ? delay_pipeline[18] :
                       (cur_count == 6'b010010) ? delay_pipeline[19] :
                       (cur_count == 6'b010011) ? delay_pipeline[20] :
                       (cur_count == 6'b010100) ? delay_pipeline[21] :
                       (cur_count == 6'b010101) ? delay_pipeline[22] :
                       (cur_count == 6'b010110) ? delay_pipeline[23] :
                       (cur_count == 6'b010111) ? delay_pipeline[24] :
                       (cur_count == 6'b011000) ? delay_pipeline[25] :
                       (cur_count == 6'b011001) ? delay_pipeline[26] :
                       (cur_count == 6'b011010) ? delay_pipeline[28] :
                       (cur_count == 6'b011011) ? delay_pipeline[29] :
                       (cur_count == 6'b011100) ? delay_pipeline[30] :
                       (cur_count == 6'b011101) ? delay_pipeline[31] :
                       (cur_count == 6'b011110) ? delay_pipeline[32] :
                       (cur_count == 6'b011111) ? delay_pipeline[33] :
                       (cur_count == 6'b100000) ? delay_pipeline[34] :
                       (cur_count == 6'b100001) ? delay_pipeline[35] :
                       (cur_count == 6'b100010) ? delay_pipeline[36] :
                       (cur_count == 6'b100011) ? delay_pipeline[37] :
                       (cur_count == 6'b100100) ? delay_pipeline[38] :
                       (cur_count == 6'b100101) ? delay_pipeline[39] :
                       (cur_count == 6'b100110) ? delay_pipeline[40] :
                       (cur_count == 6'b100111) ? delay_pipeline[41] :
                       (cur_count == 6'b101000) ? delay_pipeline[42] :
                       (cur_count == 6'b101001) ? delay_pipeline[43] :
                       (cur_count == 6'b101010) ? delay_pipeline[44] :
                       (cur_count == 6'b101011) ? delay_pipeline[45] :
                       (cur_count == 6'b101100) ? delay_pipeline[46] :
                       (cur_count == 6'b101101) ? delay_pipeline[47] :
                       (cur_count == 6'b101110) ? delay_pipeline[48] :
                       (cur_count == 6'b101111) ? delay_pipeline[49] :
                       (cur_count == 6'b110000) ? delay_pipeline[50] :
                       (cur_count == 6'b110001) ? delay_pipeline[51] :
                       (cur_count == 6'b110010) ? delay_pipeline[52] :
                       (cur_count == 6'b110011) ? delay_pipeline[53] :
                       (cur_count == 6'b110100) ? delay_pipeline[54] :
                       (cur_count == 6'b110101) ? delay_pipeline[55] :
                       (cur_count == 6'b110110) ? delay_pipeline[56] :
                       (cur_count == 6'b110111) ? delay_pipeline[57] :
                       (cur_count == 6'b111000) ? delay_pipeline[58] :
                       delay_pipeline[59];
  assign preaddmux_b1 = (cur_count == 6'b000000) ? delay_pipeline[118] :
                       (cur_count == 6'b000001) ? delay_pipeline[117] :
                       (cur_count == 6'b000010) ? delay_pipeline[116] :
                       (cur_count == 6'b000011) ? delay_pipeline[115] :
                       (cur_count == 6'b000100) ? delay_pipeline[113] :
                       (cur_count == 6'b000101) ? delay_pipeline[112] :
                       (cur_count == 6'b000110) ? delay_pipeline[111] :
                       (cur_count == 6'b000111) ? delay_pipeline[110] :
                       (cur_count == 6'b001000) ? delay_pipeline[109] :
                       (cur_count == 6'b001001) ? delay_pipeline[108] :
                       (cur_count == 6'b001010) ? delay_pipeline[107] :
                       (cur_count == 6'b001011) ? delay_pipeline[106] :
                       (cur_count == 6'b001100) ? delay_pipeline[105] :
                       (cur_count == 6'b001101) ? delay_pipeline[104] :
                       (cur_count == 6'b001110) ? delay_pipeline[103] :
                       (cur_count == 6'b001111) ? delay_pipeline[102] :
                       (cur_count == 6'b010000) ? delay_pipeline[101] :
                       (cur_count == 6'b010001) ? delay_pipeline[100] :
                       (cur_count == 6'b010010) ? delay_pipeline[99] :
                       (cur_count == 6'b010011) ? delay_pipeline[98] :
                       (cur_count == 6'b010100) ? delay_pipeline[97] :
                       (cur_count == 6'b010101) ? delay_pipeline[96] :
                       (cur_count == 6'b010110) ? delay_pipeline[95] :
                       (cur_count == 6'b010111) ? delay_pipeline[94] :
                       (cur_count == 6'b011000) ? delay_pipeline[93] :
                       (cur_count == 6'b011001) ? delay_pipeline[92] :
                       (cur_count == 6'b011010) ? delay_pipeline[90] :
                       (cur_count == 6'b011011) ? delay_pipeline[89] :
                       (cur_count == 6'b011100) ? delay_pipeline[88] :
                       (cur_count == 6'b011101) ? delay_pipeline[87] :
                       (cur_count == 6'b011110) ? delay_pipeline[86] :
                       (cur_count == 6'b011111) ? delay_pipeline[85] :
                       (cur_count == 6'b100000) ? delay_pipeline[84] :
                       (cur_count == 6'b100001) ? delay_pipeline[83] :
                       (cur_count == 6'b100010) ? delay_pipeline[82] :
                       (cur_count == 6'b100011) ? delay_pipeline[81] :
                       (cur_count == 6'b100100) ? delay_pipeline[80] :
                       (cur_count == 6'b100101) ? delay_pipeline[79] :
                       (cur_count == 6'b100110) ? delay_pipeline[78] :
                       (cur_count == 6'b100111) ? delay_pipeline[77] :
                       (cur_count == 6'b101000) ? delay_pipeline[76] :
                       (cur_count == 6'b101001) ? delay_pipeline[75] :
                       (cur_count == 6'b101010) ? delay_pipeline[74] :
                       (cur_count == 6'b101011) ? delay_pipeline[73] :
                       (cur_count == 6'b101100) ? delay_pipeline[72] :
                       (cur_count == 6'b101101) ? delay_pipeline[71] :
                       (cur_count == 6'b101110) ? delay_pipeline[70] :
                       (cur_count == 6'b101111) ? delay_pipeline[69] :
                       (cur_count == 6'b110000) ? delay_pipeline[68] :
                       (cur_count == 6'b110001) ? delay_pipeline[67] :
                       (cur_count == 6'b110010) ? delay_pipeline[66] :
                       (cur_count == 6'b110011) ? delay_pipeline[65] :
                       (cur_count == 6'b110100) ? delay_pipeline[64] :
                       (cur_count == 6'b110101) ? delay_pipeline[63] :
                       (cur_count == 6'b110110) ? delay_pipeline[62] :
                       (cur_count == 6'b110111) ? delay_pipeline[61] :
                       (cur_count == 6'b111000) ? delay_pipeline[60] :
                       const_zero;
  assign add_signext = preaddmux_a1;
  assign add_signext_1 = preaddmux_b1;
  assign tapsum_1 = add_signext + add_signext_1;

  assign tapsum_mcand_1 = tapsum_1;

  //   ------------------ Serial partition # 1 ------------------

  assign product_1_mux = (cur_count == 6'b000000) ? coeff1 :
                        (cur_count == 6'b000001) ? coeff2 :
                        (cur_count == 6'b000010) ? coeff3 :
                        (cur_count == 6'b000011) ? coeff4 :
                        (cur_count == 6'b000100) ? coeff6 :
                        (cur_count == 6'b000101) ? coeff7 :
                        (cur_count == 6'b000110) ? coeff8 :
                        (cur_count == 6'b000111) ? coeff9 :
                        (cur_count == 6'b001000) ? coeff10 :
                        (cur_count == 6'b001001) ? coeff11 :
                        (cur_count == 6'b001010) ? coeff12 :
                        (cur_count == 6'b001011) ? coeff13 :
                        (cur_count == 6'b001100) ? coeff14 :
                        (cur_count == 6'b001101) ? coeff15 :
                        (cur_count == 6'b001110) ? coeff16 :
                        (cur_count == 6'b001111) ? coeff17 :
                        (cur_count == 6'b010000) ? coeff18 :
                        (cur_count == 6'b010001) ? coeff19 :
                        (cur_count == 6'b010010) ? coeff20 :
                        (cur_count == 6'b010011) ? coeff21 :
                        (cur_count == 6'b010100) ? coeff22 :
                        (cur_count == 6'b010101) ? coeff23 :
                        (cur_count == 6'b010110) ? coeff24 :
                        (cur_count == 6'b010111) ? coeff25 :
                        (cur_count == 6'b011000) ? coeff26 :
                        (cur_count == 6'b011001) ? coeff27 :
                        (cur_count == 6'b011010) ? coeff29 :
                        (cur_count == 6'b011011) ? coeff30 :
                        (cur_count == 6'b011100) ? coeff31 :
                        (cur_count == 6'b011101) ? coeff32 :
                        (cur_count == 6'b011110) ? coeff33 :
                        (cur_count == 6'b011111) ? coeff34 :
                        (cur_count == 6'b100000) ? coeff35 :
                        (cur_count == 6'b100001) ? coeff36 :
                        (cur_count == 6'b100010) ? coeff37 :
                        (cur_count == 6'b100011) ? coeff38 :
                        (cur_count == 6'b100100) ? coeff39 :
                        (cur_count == 6'b100101) ? coeff40 :
                        (cur_count == 6'b100110) ? coeff41 :
                        (cur_count == 6'b100111) ? coeff42 :
                        (cur_count == 6'b101000) ? coeff43 :
                        (cur_count == 6'b101001) ? coeff44 :
                        (cur_count == 6'b101010) ? coeff45 :
                        (cur_count == 6'b101011) ? coeff46 :
                        (cur_count == 6'b101100) ? coeff47 :
                        (cur_count == 6'b101101) ? coeff48 :
                        (cur_count == 6'b101110) ? coeff49 :
                        (cur_count == 6'b101111) ? coeff50 :
                        (cur_count == 6'b110000) ? coeff51 :
                        (cur_count == 6'b110001) ? coeff52 :
                        (cur_count == 6'b110010) ? coeff53 :
                        (cur_count == 6'b110011) ? coeff54 :
                        (cur_count == 6'b110100) ? coeff55 :
                        (cur_count == 6'b110101) ? coeff56 :
                        (cur_count == 6'b110110) ? coeff57 :
                        (cur_count == 6'b110111) ? coeff58 :
                        (cur_count == 6'b111000) ? coeff59 :
                        coeff60;
  assign product_1 = tapsum_mcand_1 * product_1_mux;

  assign prod_typeconvert_1 = $signed({{6{product_1[26]}}, product_1});

  assign add_signext_2 = prod_typeconvert_1;
  assign add_signext_3 = acc_out_1;
  assign add_temp = add_signext_2 + add_signext_3;
  assign acc_sum_1 = add_temp[32:0];

  assign acc_in_1 = (phase_0 == 1'b1) ? prod_typeconvert_1 :
                   acc_sum_1;

  always @ (posedge clk or posedge reset)
    begin: Acc_reg_1_process
      if (reset == 1'b1) begin
        acc_out_1 <= 0;
      end
      else begin
        if (clk_enable == 1'b1) begin
          acc_out_1 <= acc_in_1;
        end
      end
    end // Acc_reg_1_process

  always @ (posedge clk or posedge reset)
    begin: Finalsum_reg_process
      if (reset == 1'b1) begin
        acc_final <= 0;
      end
      else begin
        if (phase_0 == 1'b1) begin
          acc_final <= acc_out_1;
        end
      end
    end // Finalsum_reg_process

  always @ (posedge clk or posedge reset)
    begin: Output_Register_process
      if (reset == 1'b1) begin
        output_register <= 0;
      end
      else begin
        if (phase_57 == 1'b1) begin
          output_register <= acc_final;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = output_register;
endmodule  // filter5
