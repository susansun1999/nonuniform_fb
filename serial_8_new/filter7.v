// -------------------------------------------------------------
//
// Module: filter7
// Generated by MATLAB(R) 9.8 and Filter Design HDL Coder 3.1.7.
// Generated on: 2021-05-22 14:29:51
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter7
// SerialPartition: 43
// InputDataType: numerictype(1,8,7)
// TargetLanguage: Verilog
// GenerateHDLTestBench: off

// -------------------------------------------------------------
// HDL Implementation    : Fully Serial
// Folding Factor        : 43
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
// Numerator         : s8,10 -> [-1.250000e-01 1.250000e-01)
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
  input   signed [7:0] filter_in; //sfix8_En7
  input   signed [7:0] delay_pipeline [0:118] ; // sfix8_En7
  output  signed [22:0] filter_out; //sfix23_En17

////////////////////////////////////////////////////////////////
//Module Architecture: filter7
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter signed [7:0] coeff1 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff2 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff3 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff4 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff5 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff6 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff7 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff8 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff9 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff10 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff11 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff12 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff13 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff14 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff15 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff16 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff17 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff18 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff19 = 8'b11111111; //sfix8_En10
  parameter signed [7:0] coeff20 = 8'b11111110; //sfix8_En10
  parameter signed [7:0] coeff21 = 8'b11111111; //sfix8_En10
  parameter signed [7:0] coeff22 = 8'b11111111; //sfix8_En10
  parameter signed [7:0] coeff23 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff24 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff25 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff26 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff27 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff28 = 8'b00000000; //sfix8_En10
  parameter signed [7:0] coeff29 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff30 = 8'b00000010; //sfix8_En10
  parameter signed [7:0] coeff31 = 8'b00000010; //sfix8_En10
  parameter signed [7:0] coeff32 = 8'b00000001; //sfix8_En10
  parameter signed [7:0] coeff33 = 8'b11111110; //sfix8_En10
  parameter signed [7:0] coeff34 = 8'b11111011; //sfix8_En10
  parameter signed [7:0] coeff35 = 8'b11111000; //sfix8_En10
  parameter signed [7:0] coeff36 = 8'b11111000; //sfix8_En10
  parameter signed [7:0] coeff37 = 8'b11111100; //sfix8_En10
  parameter signed [7:0] coeff38 = 8'b00000101; //sfix8_En10
  parameter signed [7:0] coeff39 = 8'b00001110; //sfix8_En10
  parameter signed [7:0] coeff40 = 8'b00010100; //sfix8_En10
  parameter signed [7:0] coeff41 = 8'b00010010; //sfix8_En10
  parameter signed [7:0] coeff42 = 8'b00001000; //sfix8_En10
  parameter signed [7:0] coeff43 = 8'b11110111; //sfix8_En10
  parameter signed [7:0] coeff44 = 8'b11100111; //sfix8_En10
  parameter signed [7:0] coeff45 = 8'b11011110; //sfix8_En10
  parameter signed [7:0] coeff46 = 8'b11100010; //sfix8_En10
  parameter signed [7:0] coeff47 = 8'b11110100; //sfix8_En10
  parameter signed [7:0] coeff48 = 8'b00001101; //sfix8_En10
  parameter signed [7:0] coeff49 = 8'b00100101; //sfix8_En10
  parameter signed [7:0] coeff50 = 8'b00110001; //sfix8_En10
  parameter signed [7:0] coeff51 = 8'b00101010; //sfix8_En10
  parameter signed [7:0] coeff52 = 8'b00010001; //sfix8_En10
  parameter signed [7:0] coeff53 = 8'b11101111; //sfix8_En10
  parameter signed [7:0] coeff54 = 8'b11010001; //sfix8_En10
  parameter signed [7:0] coeff55 = 8'b11000100; //sfix8_En10
  parameter signed [7:0] coeff56 = 8'b11001110; //sfix8_En10
  parameter signed [7:0] coeff57 = 8'b11101101; //sfix8_En10
  parameter signed [7:0] coeff58 = 8'b00010100; //sfix8_En10
  parameter signed [7:0] coeff59 = 8'b00110100; //sfix8_En10
  parameter signed [7:0] coeff60 = 8'b01000000; //sfix8_En10

  parameter signed [7:0] const_zero = 8'b00000000; //sfix8_En7
  // Signals
  reg  [5:0] cur_count; // ufix6
  wire phase_42; // boolean
  wire phase_0; // boolean
  wire signed [7:0] preaddmux_a1; // sfix8_En7
  wire signed [7:0] preaddmux_b1; // sfix8_En7
  wire signed [8:0] tapsum_1; // sfix9_En7
  wire signed [7:0] add_signext; // sfix8_En7
  wire signed [7:0] add_signext_1; // sfix8_En7
  wire signed [8:0] tapsum_mcand_1; // sfix9_En7
  reg  signed [22:0] acc_final; // sfix23_En17
  reg  signed [22:0] acc_out_1; // sfix23_En17
  wire signed [16:0] product_1; // sfix17_En17
  wire signed [7:0] product_1_mux; // sfix8_En10
  wire signed [22:0] prod_typeconvert_1; // sfix23_En17
  wire signed [22:0] acc_sum_1; // sfix23_En17
  wire signed [22:0] acc_in_1; // sfix23_En17
  wire signed [22:0] add_signext_2; // sfix23_En17
  wire signed [22:0] add_signext_3; // sfix23_En17
  wire signed [23:0] add_temp; // sfix24_En17
  reg  signed [22:0] output_register; // sfix23_En17

  // Block Statements
  always @ (posedge clk or posedge reset)
    begin: Counter_process
      if (reset == 1'b1) begin
        cur_count <= 6'b101110;
      end
      else begin
        if (clk_enable == 1'b1) begin
          if (cur_count >= 6'b101110) begin
            cur_count <= 6'b000000;
          end
          else begin
            cur_count <= cur_count + 6'b000001;
          end
        end
      end
    end // Counter_process

  assign  phase_42 = (cur_count == 6'b101010 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

  assign  phase_0 = (cur_count == 6'b000000 && clk_enable == 1'b1) ? 1'b1 : 1'b0;



  assign preaddmux_a1 = (cur_count == 6'b000000) ? delay_pipeline[13] :
                       (cur_count == 6'b000001) ? delay_pipeline[14] :
                       (cur_count == 6'b000010) ? delay_pipeline[15] :
                       (cur_count == 6'b000011) ? delay_pipeline[18] :
                       (cur_count == 6'b000100) ? delay_pipeline[19] :
                       (cur_count == 6'b000101) ? delay_pipeline[20] :
                       (cur_count == 6'b000110) ? delay_pipeline[21] :
                       (cur_count == 6'b000111) ? delay_pipeline[22] :
                       (cur_count == 6'b001000) ? delay_pipeline[23] :
                       (cur_count == 6'b001001) ? delay_pipeline[24] :
                       (cur_count == 6'b001010) ? delay_pipeline[25] :
                       (cur_count == 6'b001011) ? delay_pipeline[28] :
                       (cur_count == 6'b001100) ? delay_pipeline[29] :
                       (cur_count == 6'b001101) ? delay_pipeline[30] :
                       (cur_count == 6'b001110) ? delay_pipeline[31] :
                       (cur_count == 6'b001111) ? delay_pipeline[32] :
                       (cur_count == 6'b010000) ? delay_pipeline[33] :
                       (cur_count == 6'b010001) ? delay_pipeline[34] :
                       (cur_count == 6'b010010) ? delay_pipeline[35] :
                       (cur_count == 6'b010011) ? delay_pipeline[36] :
                       (cur_count == 6'b010100) ? delay_pipeline[37] :
                       (cur_count == 6'b010101) ? delay_pipeline[38] :
                       (cur_count == 6'b010110) ? delay_pipeline[39] :
                       (cur_count == 6'b010111) ? delay_pipeline[40] :
                       (cur_count == 6'b011000) ? delay_pipeline[41] :
                       (cur_count == 6'b011001) ? delay_pipeline[42] :
                       (cur_count == 6'b011010) ? delay_pipeline[43] :
                       (cur_count == 6'b011011) ? delay_pipeline[44] :
                       (cur_count == 6'b011100) ? delay_pipeline[45] :
                       (cur_count == 6'b011101) ? delay_pipeline[46] :
                       (cur_count == 6'b011110) ? delay_pipeline[47] :
                       (cur_count == 6'b011111) ? delay_pipeline[48] :
                       (cur_count == 6'b100000) ? delay_pipeline[49] :
                       (cur_count == 6'b100001) ? delay_pipeline[50] :
                       (cur_count == 6'b100010) ? delay_pipeline[51] :
                       (cur_count == 6'b100011) ? delay_pipeline[52] :
                       (cur_count == 6'b100100) ? delay_pipeline[53] :
                       (cur_count == 6'b100101) ? delay_pipeline[54] :
                       (cur_count == 6'b100110) ? delay_pipeline[55] :
                       (cur_count == 6'b100111) ? delay_pipeline[56] :
                       (cur_count == 6'b101000) ? delay_pipeline[57] :
                       (cur_count == 6'b101001) ? delay_pipeline[58] :
                       delay_pipeline[59];
  assign preaddmux_b1 = (cur_count == 6'b000000) ? delay_pipeline[105] :
                       (cur_count == 6'b000001) ? delay_pipeline[104] :
                       (cur_count == 6'b000010) ? delay_pipeline[103] :
                       (cur_count == 6'b000011) ? delay_pipeline[100] :
                       (cur_count == 6'b000100) ? delay_pipeline[99] :
                       (cur_count == 6'b000101) ? delay_pipeline[98] :
                       (cur_count == 6'b000110) ? delay_pipeline[97] :
                       (cur_count == 6'b000111) ? delay_pipeline[96] :
                       (cur_count == 6'b001000) ? delay_pipeline[95] :
                       (cur_count == 6'b001001) ? delay_pipeline[94] :
                       (cur_count == 6'b001010) ? delay_pipeline[93] :
                       (cur_count == 6'b001011) ? delay_pipeline[90] :
                       (cur_count == 6'b001100) ? delay_pipeline[89] :
                       (cur_count == 6'b001101) ? delay_pipeline[88] :
                       (cur_count == 6'b001110) ? delay_pipeline[87] :
                       (cur_count == 6'b001111) ? delay_pipeline[86] :
                       (cur_count == 6'b010000) ? delay_pipeline[85] :
                       (cur_count == 6'b010001) ? delay_pipeline[84] :
                       (cur_count == 6'b010010) ? delay_pipeline[83] :
                       (cur_count == 6'b010011) ? delay_pipeline[82] :
                       (cur_count == 6'b010100) ? delay_pipeline[81] :
                       (cur_count == 6'b010101) ? delay_pipeline[80] :
                       (cur_count == 6'b010110) ? delay_pipeline[79] :
                       (cur_count == 6'b010111) ? delay_pipeline[78] :
                       (cur_count == 6'b011000) ? delay_pipeline[77] :
                       (cur_count == 6'b011001) ? delay_pipeline[76] :
                       (cur_count == 6'b011010) ? delay_pipeline[75] :
                       (cur_count == 6'b011011) ? delay_pipeline[74] :
                       (cur_count == 6'b011100) ? delay_pipeline[73] :
                       (cur_count == 6'b011101) ? delay_pipeline[72] :
                       (cur_count == 6'b011110) ? delay_pipeline[71] :
                       (cur_count == 6'b011111) ? delay_pipeline[70] :
                       (cur_count == 6'b100000) ? delay_pipeline[69] :
                       (cur_count == 6'b100001) ? delay_pipeline[68] :
                       (cur_count == 6'b100010) ? delay_pipeline[67] :
                       (cur_count == 6'b100011) ? delay_pipeline[66] :
                       (cur_count == 6'b100100) ? delay_pipeline[65] :
                       (cur_count == 6'b100101) ? delay_pipeline[64] :
                       (cur_count == 6'b100110) ? delay_pipeline[63] :
                       (cur_count == 6'b100111) ? delay_pipeline[62] :
                       (cur_count == 6'b101000) ? delay_pipeline[61] :
                       (cur_count == 6'b101001) ? delay_pipeline[60] :
                       const_zero;
  assign add_signext = preaddmux_a1;
  assign add_signext_1 = preaddmux_b1;
  assign tapsum_1 = add_signext + add_signext_1;

  assign tapsum_mcand_1 = tapsum_1;

  //   ------------------ Serial partition # 1 ------------------

  assign product_1_mux = (cur_count == 6'b000000) ? coeff14 :
                        (cur_count == 6'b000001) ? coeff15 :
                        (cur_count == 6'b000010) ? coeff16 :
                        (cur_count == 6'b000011) ? coeff19 :
                        (cur_count == 6'b000100) ? coeff20 :
                        (cur_count == 6'b000101) ? coeff21 :
                        (cur_count == 6'b000110) ? coeff22 :
                        (cur_count == 6'b000111) ? coeff23 :
                        (cur_count == 6'b001000) ? coeff24 :
                        (cur_count == 6'b001001) ? coeff25 :
                        (cur_count == 6'b001010) ? coeff26 :
                        (cur_count == 6'b001011) ? coeff29 :
                        (cur_count == 6'b001100) ? coeff30 :
                        (cur_count == 6'b001101) ? coeff31 :
                        (cur_count == 6'b001110) ? coeff32 :
                        (cur_count == 6'b001111) ? coeff33 :
                        (cur_count == 6'b010000) ? coeff34 :
                        (cur_count == 6'b010001) ? coeff35 :
                        (cur_count == 6'b010010) ? coeff36 :
                        (cur_count == 6'b010011) ? coeff37 :
                        (cur_count == 6'b010100) ? coeff38 :
                        (cur_count == 6'b010101) ? coeff39 :
                        (cur_count == 6'b010110) ? coeff40 :
                        (cur_count == 6'b010111) ? coeff41 :
                        (cur_count == 6'b011000) ? coeff42 :
                        (cur_count == 6'b011001) ? coeff43 :
                        (cur_count == 6'b011010) ? coeff44 :
                        (cur_count == 6'b011011) ? coeff45 :
                        (cur_count == 6'b011100) ? coeff46 :
                        (cur_count == 6'b011101) ? coeff47 :
                        (cur_count == 6'b011110) ? coeff48 :
                        (cur_count == 6'b011111) ? coeff49 :
                        (cur_count == 6'b100000) ? coeff50 :
                        (cur_count == 6'b100001) ? coeff51 :
                        (cur_count == 6'b100010) ? coeff52 :
                        (cur_count == 6'b100011) ? coeff53 :
                        (cur_count == 6'b100100) ? coeff54 :
                        (cur_count == 6'b100101) ? coeff55 :
                        (cur_count == 6'b100110) ? coeff56 :
                        (cur_count == 6'b100111) ? coeff57 :
                        (cur_count == 6'b101000) ? coeff58 :
                        (cur_count == 6'b101001) ? coeff59 :
                        coeff60;
  assign product_1 = tapsum_mcand_1 * product_1_mux;

  assign prod_typeconvert_1 = $signed({{6{product_1[16]}}, product_1});

  assign add_signext_2 = prod_typeconvert_1;
  assign add_signext_3 = acc_out_1;
  assign add_temp = add_signext_2 + add_signext_3;
  assign acc_sum_1 = add_temp[22:0];

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
        if (phase_42 == 1'b1) begin
          output_register <= acc_final;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = output_register;
endmodule  // filter7
