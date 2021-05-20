// -------------------------------------------------------------
//
// Module: filter8
// Generated by MATLAB(R) 9.8 and Filter Design HDL Coder 3.1.7.
// Generated on: 2021-05-17 13:54:23
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter8
// SerialPartition: 51
// InputDataType: numerictype(1,10,9)
// TargetLanguage: Verilog
// GenerateHDLTestBench: off

// -------------------------------------------------------------
// HDL Implementation    : Fully Serial
// Folding Factor        : 51
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
// Numerator         : s10,12 -> [-1.250000e-01 1.250000e-01)
// -------------------------------------------------------------
// Multipliers           : 1



`timescale 1 ns / 1 ns

module filter8
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
  input   signed [9:0] filter_in; //sfix10_En9
  input   signed [9:0] delay_pipeline [0:118] ; // sfix10_En9
  output  signed [26:0] filter_out; //sfix27_En21

////////////////////////////////////////////////////////////////
//Module Architecture: filter8
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter signed [9:0] coeff1 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff2 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff3 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff4 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff5 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff6 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff7 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff8 = 10'b1111111111; //sfix10_En12
  parameter signed [9:0] coeff9 = 10'b1111111111; //sfix10_En12
  parameter signed [9:0] coeff10 = 10'b1111111111; //sfix10_En12
  parameter signed [9:0] coeff11 = 10'b0000000001; //sfix10_En12
  parameter signed [9:0] coeff12 = 10'b0000000011; //sfix10_En12
  parameter signed [9:0] coeff13 = 10'b0000000011; //sfix10_En12
  parameter signed [9:0] coeff14 = 10'b0000000010; //sfix10_En12
  parameter signed [9:0] coeff15 = 10'b1111111111; //sfix10_En12
  parameter signed [9:0] coeff16 = 10'b1111111100; //sfix10_En12
  parameter signed [9:0] coeff17 = 10'b1111111010; //sfix10_En12
  parameter signed [9:0] coeff18 = 10'b1111111011; //sfix10_En12
  parameter signed [9:0] coeff19 = 10'b1111111111; //sfix10_En12
  parameter signed [9:0] coeff20 = 10'b0000000100; //sfix10_En12
  parameter signed [9:0] coeff21 = 10'b0000000111; //sfix10_En12
  parameter signed [9:0] coeff22 = 10'b0000000110; //sfix10_En12
  parameter signed [9:0] coeff23 = 10'b0000000010; //sfix10_En12
  parameter signed [9:0] coeff24 = 10'b1111111101; //sfix10_En12
  parameter signed [9:0] coeff25 = 10'b1111111011; //sfix10_En12
  parameter signed [9:0] coeff26 = 10'b1111111100; //sfix10_En12
  parameter signed [9:0] coeff27 = 10'b1111111111; //sfix10_En12
  parameter signed [9:0] coeff28 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff29 = 10'b1111111110; //sfix10_En12
  parameter signed [9:0] coeff30 = 10'b1111111010; //sfix10_En12
  parameter signed [9:0] coeff31 = 10'b1111111001; //sfix10_En12
  parameter signed [9:0] coeff32 = 10'b0000000000; //sfix10_En12
  parameter signed [9:0] coeff33 = 10'b0000001101; //sfix10_En12
  parameter signed [9:0] coeff34 = 10'b0000011011; //sfix10_En12
  parameter signed [9:0] coeff35 = 10'b0000011100; //sfix10_En12
  parameter signed [9:0] coeff36 = 10'b0000001010; //sfix10_En12
  parameter signed [9:0] coeff37 = 10'b1111101001; //sfix10_En12
  parameter signed [9:0] coeff38 = 10'b1111001001; //sfix10_En12
  parameter signed [9:0] coeff39 = 10'b1111000000; //sfix10_En12
  parameter signed [9:0] coeff40 = 10'b1111011100; //sfix10_En12
  parameter signed [9:0] coeff41 = 10'b0000010111; //sfix10_En12
  parameter signed [9:0] coeff42 = 10'b0001010101; //sfix10_En12
  parameter signed [9:0] coeff43 = 10'b0001110000; //sfix10_En12
  parameter signed [9:0] coeff44 = 10'b0001010000; //sfix10_En12
  parameter signed [9:0] coeff45 = 10'b1111111011; //sfix10_En12
  parameter signed [9:0] coeff46 = 10'b1110011000; //sfix10_En12
  parameter signed [9:0] coeff47 = 10'b1101011111; //sfix10_En12
  parameter signed [9:0] coeff48 = 10'b1101110111; //sfix10_En12
  parameter signed [9:0] coeff49 = 10'b1111011111; //sfix10_En12
  parameter signed [9:0] coeff50 = 10'b0001100110; //sfix10_En12
  parameter signed [9:0] coeff51 = 10'b0011000101; //sfix10_En12
  parameter signed [9:0] coeff52 = 10'b0011000011; //sfix10_En12
  parameter signed [9:0] coeff53 = 10'b0001011000; //sfix10_En12
  parameter signed [9:0] coeff54 = 10'b1110110101; //sfix10_En12
  parameter signed [9:0] coeff55 = 10'b1100101111; //sfix10_En12
  parameter signed [9:0] coeff56 = 10'b1100010001; //sfix10_En12
  parameter signed [9:0] coeff57 = 10'b1101101111; //sfix10_En12
  parameter signed [9:0] coeff58 = 10'b0000011100; //sfix10_En12
  parameter signed [9:0] coeff59 = 10'b0010111110; //sfix10_En12
  parameter signed [9:0] coeff60 = 10'b0100000000; //sfix10_En12

  parameter signed [9:0] const_zero = 10'b0000000000; //sfix10_En9
  // Signals
  reg  [5:0] cur_count; // ufix6
  wire phase_50; // boolean
  wire phase_0; // boolean
  wire signed [9:0] preaddmux_a1; // sfix10_En9
  wire signed [9:0] preaddmux_b1; // sfix10_En9
  wire signed [10:0] tapsum_1; // sfix11_En9
  wire signed [9:0] add_signext; // sfix10_En9
  wire signed [9:0] add_signext_1; // sfix10_En9
  wire signed [10:0] tapsum_mcand_1; // sfix11_En9
  reg  signed [26:0] acc_final; // sfix27_En21
  reg  signed [26:0] acc_out_1; // sfix27_En21
  wire signed [20:0] product_1; // sfix21_En21
  wire signed [9:0] product_1_mux; // sfix10_En12
  wire signed [26:0] prod_typeconvert_1; // sfix27_En21
  wire signed [26:0] acc_sum_1; // sfix27_En21
  wire signed [26:0] acc_in_1; // sfix27_En21
  wire signed [26:0] add_signext_2; // sfix27_En21
  wire signed [26:0] add_signext_3; // sfix27_En21
  wire signed [27:0] add_temp; // sfix28_En21
  reg  signed [26:0] output_register; // sfix27_En21

  // Block Statements
  always @ (posedge clk or posedge reset)
    begin: Counter_process
      if (reset == 1'b1) begin
        cur_count <= 6'b110100;
      end
      else begin
        if (clk_enable == 1'b1) begin
          if (cur_count >= 6'b110100) begin
            cur_count <= 6'b000000;
          end
          else begin
            cur_count <= cur_count + 6'b000001;
          end
        end
      end
    end // Counter_process

  assign  phase_50 = (cur_count == 6'b110010 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

  assign  phase_0 = (cur_count == 6'b000000 && clk_enable == 1'b1) ? 1'b1 : 1'b0;



  assign preaddmux_a1 = (cur_count == 6'b000000) ? delay_pipeline[7] :
                       (cur_count == 6'b000001) ? delay_pipeline[8] :
                       (cur_count == 6'b000010) ? delay_pipeline[9] :
                       (cur_count == 6'b000011) ? delay_pipeline[10] :
                       (cur_count == 6'b000100) ? delay_pipeline[11] :
                       (cur_count == 6'b000101) ? delay_pipeline[12] :
                       (cur_count == 6'b000110) ? delay_pipeline[13] :
                       (cur_count == 6'b000111) ? delay_pipeline[14] :
                       (cur_count == 6'b001000) ? delay_pipeline[15] :
                       (cur_count == 6'b001001) ? delay_pipeline[16] :
                       (cur_count == 6'b001010) ? delay_pipeline[17] :
                       (cur_count == 6'b001011) ? delay_pipeline[18] :
                       (cur_count == 6'b001100) ? delay_pipeline[19] :
                       (cur_count == 6'b001101) ? delay_pipeline[20] :
                       (cur_count == 6'b001110) ? delay_pipeline[21] :
                       (cur_count == 6'b001111) ? delay_pipeline[22] :
                       (cur_count == 6'b010000) ? delay_pipeline[23] :
                       (cur_count == 6'b010001) ? delay_pipeline[24] :
                       (cur_count == 6'b010010) ? delay_pipeline[25] :
                       (cur_count == 6'b010011) ? delay_pipeline[26] :
                       (cur_count == 6'b010100) ? delay_pipeline[28] :
                       (cur_count == 6'b010101) ? delay_pipeline[29] :
                       (cur_count == 6'b010110) ? delay_pipeline[30] :
                       (cur_count == 6'b010111) ? delay_pipeline[32] :
                       (cur_count == 6'b011000) ? delay_pipeline[33] :
                       (cur_count == 6'b011001) ? delay_pipeline[34] :
                       (cur_count == 6'b011010) ? delay_pipeline[35] :
                       (cur_count == 6'b011011) ? delay_pipeline[36] :
                       (cur_count == 6'b011100) ? delay_pipeline[37] :
                       (cur_count == 6'b011101) ? delay_pipeline[38] :
                       (cur_count == 6'b011110) ? delay_pipeline[39] :
                       (cur_count == 6'b011111) ? delay_pipeline[40] :
                       (cur_count == 6'b100000) ? delay_pipeline[41] :
                       (cur_count == 6'b100001) ? delay_pipeline[42] :
                       (cur_count == 6'b100010) ? delay_pipeline[43] :
                       (cur_count == 6'b100011) ? delay_pipeline[44] :
                       (cur_count == 6'b100100) ? delay_pipeline[45] :
                       (cur_count == 6'b100101) ? delay_pipeline[46] :
                       (cur_count == 6'b100110) ? delay_pipeline[47] :
                       (cur_count == 6'b100111) ? delay_pipeline[48] :
                       (cur_count == 6'b101000) ? delay_pipeline[49] :
                       (cur_count == 6'b101001) ? delay_pipeline[50] :
                       (cur_count == 6'b101010) ? delay_pipeline[51] :
                       (cur_count == 6'b101011) ? delay_pipeline[52] :
                       (cur_count == 6'b101100) ? delay_pipeline[53] :
                       (cur_count == 6'b101101) ? delay_pipeline[54] :
                       (cur_count == 6'b101110) ? delay_pipeline[55] :
                       (cur_count == 6'b101111) ? delay_pipeline[56] :
                       (cur_count == 6'b110000) ? delay_pipeline[57] :
                       (cur_count == 6'b110001) ? delay_pipeline[58] :
                       delay_pipeline[59];
  assign preaddmux_b1 = (cur_count == 6'b000000) ? delay_pipeline[111] :
                       (cur_count == 6'b000001) ? delay_pipeline[110] :
                       (cur_count == 6'b000010) ? delay_pipeline[109] :
                       (cur_count == 6'b000011) ? delay_pipeline[108] :
                       (cur_count == 6'b000100) ? delay_pipeline[107] :
                       (cur_count == 6'b000101) ? delay_pipeline[106] :
                       (cur_count == 6'b000110) ? delay_pipeline[105] :
                       (cur_count == 6'b000111) ? delay_pipeline[104] :
                       (cur_count == 6'b001000) ? delay_pipeline[103] :
                       (cur_count == 6'b001001) ? delay_pipeline[102] :
                       (cur_count == 6'b001010) ? delay_pipeline[101] :
                       (cur_count == 6'b001011) ? delay_pipeline[100] :
                       (cur_count == 6'b001100) ? delay_pipeline[99] :
                       (cur_count == 6'b001101) ? delay_pipeline[98] :
                       (cur_count == 6'b001110) ? delay_pipeline[97] :
                       (cur_count == 6'b001111) ? delay_pipeline[96] :
                       (cur_count == 6'b010000) ? delay_pipeline[95] :
                       (cur_count == 6'b010001) ? delay_pipeline[94] :
                       (cur_count == 6'b010010) ? delay_pipeline[93] :
                       (cur_count == 6'b010011) ? delay_pipeline[92] :
                       (cur_count == 6'b010100) ? delay_pipeline[90] :
                       (cur_count == 6'b010101) ? delay_pipeline[89] :
                       (cur_count == 6'b010110) ? delay_pipeline[88] :
                       (cur_count == 6'b010111) ? delay_pipeline[86] :
                       (cur_count == 6'b011000) ? delay_pipeline[85] :
                       (cur_count == 6'b011001) ? delay_pipeline[84] :
                       (cur_count == 6'b011010) ? delay_pipeline[83] :
                       (cur_count == 6'b011011) ? delay_pipeline[82] :
                       (cur_count == 6'b011100) ? delay_pipeline[81] :
                       (cur_count == 6'b011101) ? delay_pipeline[80] :
                       (cur_count == 6'b011110) ? delay_pipeline[79] :
                       (cur_count == 6'b011111) ? delay_pipeline[78] :
                       (cur_count == 6'b100000) ? delay_pipeline[77] :
                       (cur_count == 6'b100001) ? delay_pipeline[76] :
                       (cur_count == 6'b100010) ? delay_pipeline[75] :
                       (cur_count == 6'b100011) ? delay_pipeline[74] :
                       (cur_count == 6'b100100) ? delay_pipeline[73] :
                       (cur_count == 6'b100101) ? delay_pipeline[72] :
                       (cur_count == 6'b100110) ? delay_pipeline[71] :
                       (cur_count == 6'b100111) ? delay_pipeline[70] :
                       (cur_count == 6'b101000) ? delay_pipeline[69] :
                       (cur_count == 6'b101001) ? delay_pipeline[68] :
                       (cur_count == 6'b101010) ? delay_pipeline[67] :
                       (cur_count == 6'b101011) ? delay_pipeline[66] :
                       (cur_count == 6'b101100) ? delay_pipeline[65] :
                       (cur_count == 6'b101101) ? delay_pipeline[64] :
                       (cur_count == 6'b101110) ? delay_pipeline[63] :
                       (cur_count == 6'b101111) ? delay_pipeline[62] :
                       (cur_count == 6'b110000) ? delay_pipeline[61] :
                       (cur_count == 6'b110001) ? delay_pipeline[60] :
                       const_zero;
  assign add_signext = preaddmux_a1;
  assign add_signext_1 = preaddmux_b1;
  assign tapsum_1 = add_signext + add_signext_1;

  assign tapsum_mcand_1 = tapsum_1;

  //   ------------------ Serial partition # 1 ------------------

  assign product_1_mux = (cur_count == 6'b000000) ? coeff8 :
                        (cur_count == 6'b000001) ? coeff9 :
                        (cur_count == 6'b000010) ? coeff10 :
                        (cur_count == 6'b000011) ? coeff11 :
                        (cur_count == 6'b000100) ? coeff12 :
                        (cur_count == 6'b000101) ? coeff13 :
                        (cur_count == 6'b000110) ? coeff14 :
                        (cur_count == 6'b000111) ? coeff15 :
                        (cur_count == 6'b001000) ? coeff16 :
                        (cur_count == 6'b001001) ? coeff17 :
                        (cur_count == 6'b001010) ? coeff18 :
                        (cur_count == 6'b001011) ? coeff19 :
                        (cur_count == 6'b001100) ? coeff20 :
                        (cur_count == 6'b001101) ? coeff21 :
                        (cur_count == 6'b001110) ? coeff22 :
                        (cur_count == 6'b001111) ? coeff23 :
                        (cur_count == 6'b010000) ? coeff24 :
                        (cur_count == 6'b010001) ? coeff25 :
                        (cur_count == 6'b010010) ? coeff26 :
                        (cur_count == 6'b010011) ? coeff27 :
                        (cur_count == 6'b010100) ? coeff29 :
                        (cur_count == 6'b010101) ? coeff30 :
                        (cur_count == 6'b010110) ? coeff31 :
                        (cur_count == 6'b010111) ? coeff33 :
                        (cur_count == 6'b011000) ? coeff34 :
                        (cur_count == 6'b011001) ? coeff35 :
                        (cur_count == 6'b011010) ? coeff36 :
                        (cur_count == 6'b011011) ? coeff37 :
                        (cur_count == 6'b011100) ? coeff38 :
                        (cur_count == 6'b011101) ? coeff39 :
                        (cur_count == 6'b011110) ? coeff40 :
                        (cur_count == 6'b011111) ? coeff41 :
                        (cur_count == 6'b100000) ? coeff42 :
                        (cur_count == 6'b100001) ? coeff43 :
                        (cur_count == 6'b100010) ? coeff44 :
                        (cur_count == 6'b100011) ? coeff45 :
                        (cur_count == 6'b100100) ? coeff46 :
                        (cur_count == 6'b100101) ? coeff47 :
                        (cur_count == 6'b100110) ? coeff48 :
                        (cur_count == 6'b100111) ? coeff49 :
                        (cur_count == 6'b101000) ? coeff50 :
                        (cur_count == 6'b101001) ? coeff51 :
                        (cur_count == 6'b101010) ? coeff52 :
                        (cur_count == 6'b101011) ? coeff53 :
                        (cur_count == 6'b101100) ? coeff54 :
                        (cur_count == 6'b101101) ? coeff55 :
                        (cur_count == 6'b101110) ? coeff56 :
                        (cur_count == 6'b101111) ? coeff57 :
                        (cur_count == 6'b110000) ? coeff58 :
                        (cur_count == 6'b110001) ? coeff59 :
                        coeff60;
  assign product_1 = tapsum_mcand_1 * product_1_mux;

  assign prod_typeconvert_1 = $signed({{6{product_1[20]}}, product_1});

  assign add_signext_2 = prod_typeconvert_1;
  assign add_signext_3 = acc_out_1;
  assign add_temp = add_signext_2 + add_signext_3;
  assign acc_sum_1 = add_temp[26:0];

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
        if (phase_50 == 1'b1) begin
          output_register <= acc_final;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = output_register;
endmodule  // filter8
