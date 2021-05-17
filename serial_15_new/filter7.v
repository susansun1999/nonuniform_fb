// -------------------------------------------------------------
//
// Module: filter7
// Generated by MATLAB(R) 9.8 and Filter Design HDL Coder 3.1.7.
// Generated on: 2021-05-17 14:24:12
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter7
// SerialPartition: 59
// InputDataType: numerictype(1,15,14)
// TargetLanguage: Verilog
// GenerateHDLTestBench: off

// -------------------------------------------------------------
// HDL Implementation    : Fully Serial
// Folding Factor        : 59
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
// Numerator         : s15,17 -> [-1.250000e-01 1.250000e-01)
// -------------------------------------------------------------
// Multipliers           : 1



`timescale 1 ns / 1 ns

module filter7
               (
                clk,
                clk_enable,
                reset,
                filter_in,
                delay_pipeline,
                filter_out
                );

  input   clk; 
  input   clk_enable; 
  input   reset; 
  input   signed [14:0] filter_in; //sfix15_En14
  input   signed [14:0] delay_pipeline [0:118] ; // sfix15_En14
  output  signed [36:0] filter_out; //sfix37_En31

////////////////////////////////////////////////////////////////
//Module Architecture: filter7
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter signed [14:0] coeff1 = 15'b111111111111110; //sfix15_En17
  parameter signed [14:0] coeff2 = 15'b111111111111111; //sfix15_En17
  parameter signed [14:0] coeff3 = 15'b000000000000010; //sfix15_En17
  parameter signed [14:0] coeff4 = 15'b000000000001000; //sfix15_En17
  parameter signed [14:0] coeff5 = 15'b000000000001111; //sfix15_En17
  parameter signed [14:0] coeff6 = 15'b000000000010010; //sfix15_En17
  parameter signed [14:0] coeff7 = 15'b000000000001001; //sfix15_En17
  parameter signed [14:0] coeff8 = 15'b111111111110100; //sfix15_En17
  parameter signed [14:0] coeff9 = 15'b111111111010111; //sfix15_En17
  parameter signed [14:0] coeff10 = 15'b111111111000001; //sfix15_En17
  parameter signed [14:0] coeff11 = 15'b111111111000001; //sfix15_En17
  parameter signed [14:0] coeff12 = 15'b111111111100011; //sfix15_En17
  parameter signed [14:0] coeff13 = 15'b000000000100010; //sfix15_En17
  parameter signed [14:0] coeff14 = 15'b000000001101001; //sfix15_En17
  parameter signed [14:0] coeff15 = 15'b000000010010101; //sfix15_En17
  parameter signed [14:0] coeff16 = 15'b000000010001000; //sfix15_En17
  parameter signed [14:0] coeff17 = 15'b000000000111010; //sfix15_En17
  parameter signed [14:0] coeff18 = 15'b111111111000001; //sfix15_En17
  parameter signed [14:0] coeff19 = 15'b111111101010000; //sfix15_En17
  parameter signed [14:0] coeff20 = 15'b111111100011100; //sfix15_En17
  parameter signed [14:0] coeff21 = 15'b111111101000011; //sfix15_En17
  parameter signed [14:0] coeff22 = 15'b111111110111000; //sfix15_En17
  parameter signed [14:0] coeff23 = 15'b000000001000101; //sfix15_En17
  parameter signed [14:0] coeff24 = 15'b000000010100101; //sfix15_En17
  parameter signed [14:0] coeff25 = 15'b000000010101110; //sfix15_En17
  parameter signed [14:0] coeff26 = 15'b000000001101010; //sfix15_En17
  parameter signed [14:0] coeff27 = 15'b000000000010111; //sfix15_En17
  parameter signed [14:0] coeff28 = 15'b000000000000000; //sfix15_En17
  parameter signed [14:0] coeff29 = 15'b000000001001010; //sfix15_En17
  parameter signed [14:0] coeff30 = 15'b000000011001011; //sfix15_En17
  parameter signed [14:0] coeff31 = 15'b000000100001110; //sfix15_En17
  parameter signed [14:0] coeff32 = 15'b000000010010111; //sfix15_En17
  parameter signed [14:0] coeff33 = 15'b111111100110011; //sfix15_En17
  parameter signed [14:0] coeff34 = 15'b111110101000111; //sfix15_En17
  parameter signed [14:0] coeff35 = 15'b111101111000100; //sfix15_En17
  parameter signed [14:0] coeff36 = 15'b111101111001100; //sfix15_En17
  parameter signed [14:0] coeff37 = 15'b111111000010010; //sfix15_En17
  parameter signed [14:0] coeff38 = 15'b000001001000111; //sfix15_En17
  parameter signed [14:0] coeff39 = 15'b000011011110011; //sfix15_En17
  parameter signed [14:0] coeff40 = 15'b000100111100001; //sfix15_En17
  parameter signed [14:0] coeff41 = 15'b000100100010111; //sfix15_En17
  parameter signed [14:0] coeff42 = 15'b000001111101001; //sfix15_En17
  parameter signed [14:0] coeff43 = 15'b111101110100100; //sfix15_En17
  parameter signed [14:0] coeff44 = 15'b111001101100001; //sfix15_En17
  parameter signed [14:0] coeff45 = 15'b110111011100011; //sfix15_En17
  parameter signed [14:0] coeff46 = 15'b111000011101110; //sfix15_En17
  parameter signed [14:0] coeff47 = 15'b111100111000111; //sfix15_En17
  parameter signed [14:0] coeff48 = 15'b000011010101110; //sfix15_En17
  parameter signed [14:0] coeff49 = 15'b001001010101000; //sfix15_En17
  parameter signed [14:0] coeff50 = 15'b001100001110010; //sfix15_En17
  parameter signed [14:0] coeff51 = 15'b001010011010110; //sfix15_En17
  parameter signed [14:0] coeff52 = 15'b000100001010110; //sfix15_En17
  parameter signed [14:0] coeff53 = 15'b111011101010010; //sfix15_En17
  parameter signed [14:0] coeff54 = 15'b110100001111000; //sfix15_En17
  parameter signed [14:0] coeff55 = 15'b110001000001100; //sfix15_En17
  parameter signed [14:0] coeff56 = 15'b110011100101111; //sfix15_En17
  parameter signed [14:0] coeff57 = 15'b111011001011000; //sfix15_En17
  parameter signed [14:0] coeff58 = 15'b000100111001001; //sfix15_En17
  parameter signed [14:0] coeff59 = 15'b001100111010010; //sfix15_En17
  parameter signed [14:0] coeff60 = 15'b010000000000000; //sfix15_En17

  parameter signed [14:0] const_zero = 15'b000000000000000; //sfix15_En14
  // Signals
  reg  [5:0] cur_count; // ufix6
  wire phase_58; // boolean
  wire phase_0; // boolean
  wire signed [14:0] preaddmux_a1; // sfix15_En14
  wire signed [14:0] preaddmux_b1; // sfix15_En14
  wire signed [15:0] tapsum_1; // sfix16_En14
  wire signed [14:0] add_signext; // sfix15_En14
  wire signed [14:0] add_signext_1; // sfix15_En14
  wire signed [15:0] tapsum_mcand_1; // sfix16_En14
  reg  signed [36:0] acc_final; // sfix37_En31
  reg  signed [36:0] acc_out_1; // sfix37_En31
  wire signed [30:0] product_1; // sfix31_En31
  wire signed [14:0] product_1_mux; // sfix15_En17
  wire signed [36:0] prod_typeconvert_1; // sfix37_En31
  wire signed [36:0] acc_sum_1; // sfix37_En31
  wire signed [36:0] acc_in_1; // sfix37_En31
  wire signed [36:0] add_signext_2; // sfix37_En31
  wire signed [36:0] add_signext_3; // sfix37_En31
  wire signed [37:0] add_temp; // sfix38_En31
  reg  signed [36:0] output_register; // sfix37_En31

  // Block Statements
  always @ (posedge clk or posedge reset)
    begin: Counter_process
      if (reset == 1'b1) begin
        cur_count <= 6'b111011;
      end
      else begin
        if (clk_enable == 1'b1) begin
          if (cur_count >= 6'b111011) begin
            cur_count <= 6'b000000;
          end
          else begin
            cur_count <= cur_count + 6'b000001;
          end
        end
      end
    end // Counter_process

  assign  phase_58 = (cur_count == 6'b111010 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

  assign  phase_0 = (cur_count == 6'b000000 && clk_enable == 1'b1) ? 1'b1 : 1'b0;



  assign preaddmux_a1 = (cur_count == 6'b000000) ? delay_pipeline[0] :
                       (cur_count == 6'b000001) ? delay_pipeline[1] :
                       (cur_count == 6'b000010) ? delay_pipeline[2] :
                       (cur_count == 6'b000011) ? delay_pipeline[3] :
                       (cur_count == 6'b000100) ? delay_pipeline[4] :
                       (cur_count == 6'b000101) ? delay_pipeline[5] :
                       (cur_count == 6'b000110) ? delay_pipeline[6] :
                       (cur_count == 6'b000111) ? delay_pipeline[7] :
                       (cur_count == 6'b001000) ? delay_pipeline[8] :
                       (cur_count == 6'b001001) ? delay_pipeline[9] :
                       (cur_count == 6'b001010) ? delay_pipeline[10] :
                       (cur_count == 6'b001011) ? delay_pipeline[11] :
                       (cur_count == 6'b001100) ? delay_pipeline[12] :
                       (cur_count == 6'b001101) ? delay_pipeline[13] :
                       (cur_count == 6'b001110) ? delay_pipeline[14] :
                       (cur_count == 6'b001111) ? delay_pipeline[15] :
                       (cur_count == 6'b010000) ? delay_pipeline[16] :
                       (cur_count == 6'b010001) ? delay_pipeline[17] :
                       (cur_count == 6'b010010) ? delay_pipeline[18] :
                       (cur_count == 6'b010011) ? delay_pipeline[19] :
                       (cur_count == 6'b010100) ? delay_pipeline[20] :
                       (cur_count == 6'b010101) ? delay_pipeline[21] :
                       (cur_count == 6'b010110) ? delay_pipeline[22] :
                       (cur_count == 6'b010111) ? delay_pipeline[23] :
                       (cur_count == 6'b011000) ? delay_pipeline[24] :
                       (cur_count == 6'b011001) ? delay_pipeline[25] :
                       (cur_count == 6'b011010) ? delay_pipeline[26] :
                       (cur_count == 6'b011011) ? delay_pipeline[28] :
                       (cur_count == 6'b011100) ? delay_pipeline[29] :
                       (cur_count == 6'b011101) ? delay_pipeline[30] :
                       (cur_count == 6'b011110) ? delay_pipeline[31] :
                       (cur_count == 6'b011111) ? delay_pipeline[32] :
                       (cur_count == 6'b100000) ? delay_pipeline[33] :
                       (cur_count == 6'b100001) ? delay_pipeline[34] :
                       (cur_count == 6'b100010) ? delay_pipeline[35] :
                       (cur_count == 6'b100011) ? delay_pipeline[36] :
                       (cur_count == 6'b100100) ? delay_pipeline[37] :
                       (cur_count == 6'b100101) ? delay_pipeline[38] :
                       (cur_count == 6'b100110) ? delay_pipeline[39] :
                       (cur_count == 6'b100111) ? delay_pipeline[40] :
                       (cur_count == 6'b101000) ? delay_pipeline[41] :
                       (cur_count == 6'b101001) ? delay_pipeline[42] :
                       (cur_count == 6'b101010) ? delay_pipeline[43] :
                       (cur_count == 6'b101011) ? delay_pipeline[44] :
                       (cur_count == 6'b101100) ? delay_pipeline[45] :
                       (cur_count == 6'b101101) ? delay_pipeline[46] :
                       (cur_count == 6'b101110) ? delay_pipeline[47] :
                       (cur_count == 6'b101111) ? delay_pipeline[48] :
                       (cur_count == 6'b110000) ? delay_pipeline[49] :
                       (cur_count == 6'b110001) ? delay_pipeline[50] :
                       (cur_count == 6'b110010) ? delay_pipeline[51] :
                       (cur_count == 6'b110011) ? delay_pipeline[52] :
                       (cur_count == 6'b110100) ? delay_pipeline[53] :
                       (cur_count == 6'b110101) ? delay_pipeline[54] :
                       (cur_count == 6'b110110) ? delay_pipeline[55] :
                       (cur_count == 6'b110111) ? delay_pipeline[56] :
                       (cur_count == 6'b111000) ? delay_pipeline[57] :
                       (cur_count == 6'b111001) ? delay_pipeline[58] :
                       delay_pipeline[59];
  assign preaddmux_b1 = (cur_count == 6'b000000) ? delay_pipeline[118] :
                       (cur_count == 6'b000001) ? delay_pipeline[117] :
                       (cur_count == 6'b000010) ? delay_pipeline[116] :
                       (cur_count == 6'b000011) ? delay_pipeline[115] :
                       (cur_count == 6'b000100) ? delay_pipeline[114] :
                       (cur_count == 6'b000101) ? delay_pipeline[113] :
                       (cur_count == 6'b000110) ? delay_pipeline[112] :
                       (cur_count == 6'b000111) ? delay_pipeline[111] :
                       (cur_count == 6'b001000) ? delay_pipeline[110] :
                       (cur_count == 6'b001001) ? delay_pipeline[109] :
                       (cur_count == 6'b001010) ? delay_pipeline[108] :
                       (cur_count == 6'b001011) ? delay_pipeline[107] :
                       (cur_count == 6'b001100) ? delay_pipeline[106] :
                       (cur_count == 6'b001101) ? delay_pipeline[105] :
                       (cur_count == 6'b001110) ? delay_pipeline[104] :
                       (cur_count == 6'b001111) ? delay_pipeline[103] :
                       (cur_count == 6'b010000) ? delay_pipeline[102] :
                       (cur_count == 6'b010001) ? delay_pipeline[101] :
                       (cur_count == 6'b010010) ? delay_pipeline[100] :
                       (cur_count == 6'b010011) ? delay_pipeline[99] :
                       (cur_count == 6'b010100) ? delay_pipeline[98] :
                       (cur_count == 6'b010101) ? delay_pipeline[97] :
                       (cur_count == 6'b010110) ? delay_pipeline[96] :
                       (cur_count == 6'b010111) ? delay_pipeline[95] :
                       (cur_count == 6'b011000) ? delay_pipeline[94] :
                       (cur_count == 6'b011001) ? delay_pipeline[93] :
                       (cur_count == 6'b011010) ? delay_pipeline[92] :
                       (cur_count == 6'b011011) ? delay_pipeline[90] :
                       (cur_count == 6'b011100) ? delay_pipeline[89] :
                       (cur_count == 6'b011101) ? delay_pipeline[88] :
                       (cur_count == 6'b011110) ? delay_pipeline[87] :
                       (cur_count == 6'b011111) ? delay_pipeline[86] :
                       (cur_count == 6'b100000) ? delay_pipeline[85] :
                       (cur_count == 6'b100001) ? delay_pipeline[84] :
                       (cur_count == 6'b100010) ? delay_pipeline[83] :
                       (cur_count == 6'b100011) ? delay_pipeline[82] :
                       (cur_count == 6'b100100) ? delay_pipeline[81] :
                       (cur_count == 6'b100101) ? delay_pipeline[80] :
                       (cur_count == 6'b100110) ? delay_pipeline[79] :
                       (cur_count == 6'b100111) ? delay_pipeline[78] :
                       (cur_count == 6'b101000) ? delay_pipeline[77] :
                       (cur_count == 6'b101001) ? delay_pipeline[76] :
                       (cur_count == 6'b101010) ? delay_pipeline[75] :
                       (cur_count == 6'b101011) ? delay_pipeline[74] :
                       (cur_count == 6'b101100) ? delay_pipeline[73] :
                       (cur_count == 6'b101101) ? delay_pipeline[72] :
                       (cur_count == 6'b101110) ? delay_pipeline[71] :
                       (cur_count == 6'b101111) ? delay_pipeline[70] :
                       (cur_count == 6'b110000) ? delay_pipeline[69] :
                       (cur_count == 6'b110001) ? delay_pipeline[68] :
                       (cur_count == 6'b110010) ? delay_pipeline[67] :
                       (cur_count == 6'b110011) ? delay_pipeline[66] :
                       (cur_count == 6'b110100) ? delay_pipeline[65] :
                       (cur_count == 6'b110101) ? delay_pipeline[64] :
                       (cur_count == 6'b110110) ? delay_pipeline[63] :
                       (cur_count == 6'b110111) ? delay_pipeline[62] :
                       (cur_count == 6'b111000) ? delay_pipeline[61] :
                       (cur_count == 6'b111001) ? delay_pipeline[60] :
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
                        (cur_count == 6'b000100) ? coeff5 :
                        (cur_count == 6'b000101) ? coeff6 :
                        (cur_count == 6'b000110) ? coeff7 :
                        (cur_count == 6'b000111) ? coeff8 :
                        (cur_count == 6'b001000) ? coeff9 :
                        (cur_count == 6'b001001) ? coeff10 :
                        (cur_count == 6'b001010) ? coeff11 :
                        (cur_count == 6'b001011) ? coeff12 :
                        (cur_count == 6'b001100) ? coeff13 :
                        (cur_count == 6'b001101) ? coeff14 :
                        (cur_count == 6'b001110) ? coeff15 :
                        (cur_count == 6'b001111) ? coeff16 :
                        (cur_count == 6'b010000) ? coeff17 :
                        (cur_count == 6'b010001) ? coeff18 :
                        (cur_count == 6'b010010) ? coeff19 :
                        (cur_count == 6'b010011) ? coeff20 :
                        (cur_count == 6'b010100) ? coeff21 :
                        (cur_count == 6'b010101) ? coeff22 :
                        (cur_count == 6'b010110) ? coeff23 :
                        (cur_count == 6'b010111) ? coeff24 :
                        (cur_count == 6'b011000) ? coeff25 :
                        (cur_count == 6'b011001) ? coeff26 :
                        (cur_count == 6'b011010) ? coeff27 :
                        (cur_count == 6'b011011) ? coeff29 :
                        (cur_count == 6'b011100) ? coeff30 :
                        (cur_count == 6'b011101) ? coeff31 :
                        (cur_count == 6'b011110) ? coeff32 :
                        (cur_count == 6'b011111) ? coeff33 :
                        (cur_count == 6'b100000) ? coeff34 :
                        (cur_count == 6'b100001) ? coeff35 :
                        (cur_count == 6'b100010) ? coeff36 :
                        (cur_count == 6'b100011) ? coeff37 :
                        (cur_count == 6'b100100) ? coeff38 :
                        (cur_count == 6'b100101) ? coeff39 :
                        (cur_count == 6'b100110) ? coeff40 :
                        (cur_count == 6'b100111) ? coeff41 :
                        (cur_count == 6'b101000) ? coeff42 :
                        (cur_count == 6'b101001) ? coeff43 :
                        (cur_count == 6'b101010) ? coeff44 :
                        (cur_count == 6'b101011) ? coeff45 :
                        (cur_count == 6'b101100) ? coeff46 :
                        (cur_count == 6'b101101) ? coeff47 :
                        (cur_count == 6'b101110) ? coeff48 :
                        (cur_count == 6'b101111) ? coeff49 :
                        (cur_count == 6'b110000) ? coeff50 :
                        (cur_count == 6'b110001) ? coeff51 :
                        (cur_count == 6'b110010) ? coeff52 :
                        (cur_count == 6'b110011) ? coeff53 :
                        (cur_count == 6'b110100) ? coeff54 :
                        (cur_count == 6'b110101) ? coeff55 :
                        (cur_count == 6'b110110) ? coeff56 :
                        (cur_count == 6'b110111) ? coeff57 :
                        (cur_count == 6'b111000) ? coeff58 :
                        (cur_count == 6'b111001) ? coeff59 :
                        coeff60;
  assign product_1 = tapsum_mcand_1 * product_1_mux;

  assign prod_typeconvert_1 = $signed({{6{product_1[30]}}, product_1});

  assign add_signext_2 = prod_typeconvert_1;
  assign add_signext_3 = acc_out_1;
  assign add_temp = add_signext_2 + add_signext_3;
  assign acc_sum_1 = add_temp[36:0];

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
        if (phase_58 == 1'b1) begin
          output_register <= acc_final;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = output_register;
endmodule  // filter7
