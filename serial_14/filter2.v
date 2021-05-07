// -------------------------------------------------------------
//
// Module: filter2
// Generated by MATLAB(R) 9.8 and Filter Design HDL Coder 3.1.7.
// Generated on: 2021-05-07 09:24:57
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter2
// SerialPartition: 58
// InputDataType: numerictype(1,14,13)
// TargetLanguage: Verilog
// GenerateHDLTestBench: off

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
// Numerator         : s14,16 -> [-1.250000e-01 1.250000e-01)
// -------------------------------------------------------------
// Multipliers           : 1



`timescale 1 ns / 1 ns

module filter2
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
  input   signed [13:0] filter_in; //sfix14_En13
  input  signed [13:0] delay_pipeline [0:118] ; // sfix14_En13
  output  signed [34:0] filter_out; //sfix35_En29

////////////////////////////////////////////////////////////////
//Module Architecture: filter2
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter signed [13:0] coeff1 = 14'b00000000000010; //sfix14_En16
  parameter signed [13:0] coeff2 = 14'b00000000000001; //sfix14_En16
  parameter signed [13:0] coeff3 = 14'b00000000000000; //sfix14_En16
  parameter signed [13:0] coeff4 = 14'b11111111111101; //sfix14_En16
  parameter signed [13:0] coeff5 = 14'b11111111111000; //sfix14_En16
  parameter signed [13:0] coeff6 = 14'b11111111110001; //sfix14_En16
  parameter signed [13:0] coeff7 = 14'b11111111100111; //sfix14_En16
  parameter signed [13:0] coeff8 = 14'b11111111011011; //sfix14_En16
  parameter signed [13:0] coeff9 = 14'b11111111001101; //sfix14_En16
  parameter signed [13:0] coeff10 = 14'b11111110111100; //sfix14_En16
  parameter signed [13:0] coeff11 = 14'b11111110101010; //sfix14_En16
  parameter signed [13:0] coeff12 = 14'b11111110011000; //sfix14_En16
  parameter signed [13:0] coeff13 = 14'b11111110000110; //sfix14_En16
  parameter signed [13:0] coeff14 = 14'b11111101110110; //sfix14_En16
  parameter signed [13:0] coeff15 = 14'b11111101101000; //sfix14_En16
  parameter signed [13:0] coeff16 = 14'b11111101011111; //sfix14_En16
  parameter signed [13:0] coeff17 = 14'b11111101011100; //sfix14_En16
  parameter signed [13:0] coeff18 = 14'b11111101011110; //sfix14_En16
  parameter signed [13:0] coeff19 = 14'b11111101100111; //sfix14_En16
  parameter signed [13:0] coeff20 = 14'b11111101110110; //sfix14_En16
  parameter signed [13:0] coeff21 = 14'b11111110001100; //sfix14_En16
  parameter signed [13:0] coeff22 = 14'b11111110100101; //sfix14_En16
  parameter signed [13:0] coeff23 = 14'b11111111000001; //sfix14_En16
  parameter signed [13:0] coeff24 = 14'b11111111011100; //sfix14_En16
  parameter signed [13:0] coeff25 = 14'b11111111110011; //sfix14_En16
  parameter signed [13:0] coeff26 = 14'b00000000000100; //sfix14_En16
  parameter signed [13:0] coeff27 = 14'b00000000001001; //sfix14_En16
  parameter signed [13:0] coeff28 = 14'b00000000000000; //sfix14_En16
  parameter signed [13:0] coeff29 = 14'b11111111100101; //sfix14_En16
  parameter signed [13:0] coeff30 = 14'b11111110110110; //sfix14_En16
  parameter signed [13:0] coeff31 = 14'b11111101110000; //sfix14_En16
  parameter signed [13:0] coeff32 = 14'b11111100010100; //sfix14_En16
  parameter signed [13:0] coeff33 = 14'b11111010100011; //sfix14_En16
  parameter signed [13:0] coeff34 = 14'b11111000011111; //sfix14_En16
  parameter signed [13:0] coeff35 = 14'b11110110001101; //sfix14_En16
  parameter signed [13:0] coeff36 = 14'b11110011110011; //sfix14_En16
  parameter signed [13:0] coeff37 = 14'b11110001011000; //sfix14_En16
  parameter signed [13:0] coeff38 = 14'b11101111000100; //sfix14_En16
  parameter signed [13:0] coeff39 = 14'b11101101000010; //sfix14_En16
  parameter signed [13:0] coeff40 = 14'b11101011011100; //sfix14_En16
  parameter signed [13:0] coeff41 = 14'b11101010011011; //sfix14_En16
  parameter signed [13:0] coeff42 = 14'b11101010001001; //sfix14_En16
  parameter signed [13:0] coeff43 = 14'b11101010101101; //sfix14_En16
  parameter signed [13:0] coeff44 = 14'b11101100001111; //sfix14_En16
  parameter signed [13:0] coeff45 = 14'b11101110110001; //sfix14_En16
  parameter signed [13:0] coeff46 = 14'b11110010010110; //sfix14_En16
  parameter signed [13:0] coeff47 = 14'b11110110111100; //sfix14_En16
  parameter signed [13:0] coeff48 = 14'b11111100011110; //sfix14_En16
  parameter signed [13:0] coeff49 = 14'b00000010110100; //sfix14_En16
  parameter signed [13:0] coeff50 = 14'b00001001110100; //sfix14_En16
  parameter signed [13:0] coeff51 = 14'b00010001010010; //sfix14_En16
  parameter signed [13:0] coeff52 = 14'b00011000111101; //sfix14_En16
  parameter signed [13:0] coeff53 = 14'b00100000100101; //sfix14_En16
  parameter signed [13:0] coeff54 = 14'b00100111111010; //sfix14_En16
  parameter signed [13:0] coeff55 = 14'b00101110101001; //sfix14_En16
  parameter signed [13:0] coeff56 = 14'b00110100100011; //sfix14_En16
  parameter signed [13:0] coeff57 = 14'b00111001011010; //sfix14_En16
  parameter signed [13:0] coeff58 = 14'b00111101000001; //sfix14_En16
  parameter signed [13:0] coeff59 = 14'b00111111010000; //sfix14_En16
  parameter signed [13:0] coeff60 = 14'b01000000000000; //sfix14_En16

  parameter signed [13:0] const_zero = 14'b00000000000000; //sfix14_En13
  // Signals
  reg  [5:0] cur_count; // ufix6
  wire phase_57; // boolean
  wire phase_0; // boolean
  wire signed [13:0] preaddmux_a1; // sfix14_En13
  wire signed [13:0] preaddmux_b1; // sfix14_En13
  wire signed [14:0] tapsum_1; // sfix15_En13
  wire signed [13:0] add_signext; // sfix14_En13
  wire signed [13:0] add_signext_1; // sfix14_En13
  wire signed [14:0] tapsum_mcand_1; // sfix15_En13
  reg  signed [34:0] acc_final; // sfix35_En29
  reg  signed [34:0] acc_out_1; // sfix35_En29
  wire signed [28:0] product_1; // sfix29_En29
  wire signed [13:0] product_1_mux; // sfix14_En16
  wire signed [34:0] prod_typeconvert_1; // sfix35_En29
  wire signed [34:0] acc_sum_1; // sfix35_En29
  wire signed [34:0] acc_in_1; // sfix35_En29
  wire signed [34:0] add_signext_2; // sfix35_En29
  wire signed [34:0] add_signext_3; // sfix35_En29
  wire signed [35:0] add_temp; // sfix36_En29
  reg  signed [34:0] output_register; // sfix35_En29

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



  assign preaddmux_a1 = (cur_count == 6'b000000) ? delay_pipeline[0] :
                       (cur_count == 6'b000001) ? delay_pipeline[1] :
                       (cur_count == 6'b000010) ? delay_pipeline[3] :
                       (cur_count == 6'b000011) ? delay_pipeline[4] :
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
                       (cur_count == 6'b000010) ? delay_pipeline[115] :
                       (cur_count == 6'b000011) ? delay_pipeline[114] :
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
                        (cur_count == 6'b000010) ? coeff4 :
                        (cur_count == 6'b000011) ? coeff5 :
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

  assign prod_typeconvert_1 = $signed({{6{product_1[28]}}, product_1});

  assign add_signext_2 = prod_typeconvert_1;
  assign add_signext_3 = acc_out_1;
  assign add_temp = add_signext_2 + add_signext_3;
  assign acc_sum_1 = add_temp[34:0];

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
endmodule  // filter2
