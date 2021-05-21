// -------------------------------------------------------------
//
// Module: filter5
// Generated by MATLAB(R) 9.8 and Filter Design HDL Coder 3.1.7.
// Generated on: 2021-05-17 12:09:16
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter5
// SerialPartition: 52
// InputDataType: numerictype(1,11,10)
// TargetLanguage: Verilog
// GenerateHDLTestBench: off

// -------------------------------------------------------------
// HDL Implementation    : Fully Serial
// Folding Factor        : 52
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
// Numerator         : s11,13 -> [-1.250000e-01 1.250000e-01)
// -------------------------------------------------------------
// Multipliers           : 1



`timescale 1 ns / 1 ns

module filter5
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
  input   signed [10:0] filter_in; //sfix11_En10
  input   signed [10:0] delay_pipeline [0:118] ; // sfix11_En10
  output  signed [28:0] filter_out; //sfix29_En23

////////////////////////////////////////////////////////////////
//Module Architecture: filter5
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter signed [10:0] coeff1 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff2 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff3 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff4 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff5 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff6 = 11'b00000000001; //sfix11_En13
  parameter signed [10:0] coeff7 = 11'b00000000001; //sfix11_En13
  parameter signed [10:0] coeff8 = 11'b00000000010; //sfix11_En13
  parameter signed [10:0] coeff9 = 11'b00000000011; //sfix11_En13
  parameter signed [10:0] coeff10 = 11'b00000000011; //sfix11_En13
  parameter signed [10:0] coeff11 = 11'b00000000010; //sfix11_En13
  parameter signed [10:0] coeff12 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff13 = 11'b11111111110; //sfix11_En13
  parameter signed [10:0] coeff14 = 11'b11111111010; //sfix11_En13
  parameter signed [10:0] coeff15 = 11'b11111110111; //sfix11_En13
  parameter signed [10:0] coeff16 = 11'b11111110101; //sfix11_En13
  parameter signed [10:0] coeff17 = 11'b11111110110; //sfix11_En13
  parameter signed [10:0] coeff18 = 11'b11111111000; //sfix11_En13
  parameter signed [10:0] coeff19 = 11'b11111111101; //sfix11_En13
  parameter signed [10:0] coeff20 = 11'b00000000011; //sfix11_En13
  parameter signed [10:0] coeff21 = 11'b00000001001; //sfix11_En13
  parameter signed [10:0] coeff22 = 11'b00000001101; //sfix11_En13
  parameter signed [10:0] coeff23 = 11'b00000001110; //sfix11_En13
  parameter signed [10:0] coeff24 = 11'b00000001100; //sfix11_En13
  parameter signed [10:0] coeff25 = 11'b00000001000; //sfix11_En13
  parameter signed [10:0] coeff26 = 11'b00000000011; //sfix11_En13
  parameter signed [10:0] coeff27 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff28 = 11'b00000000000; //sfix11_En13
  parameter signed [10:0] coeff29 = 11'b00000000100; //sfix11_En13
  parameter signed [10:0] coeff30 = 11'b00000001100; //sfix11_En13
  parameter signed [10:0] coeff31 = 11'b00000010101; //sfix11_En13
  parameter signed [10:0] coeff32 = 11'b00000011001; //sfix11_En13
  parameter signed [10:0] coeff33 = 11'b00000010101; //sfix11_En13
  parameter signed [10:0] coeff34 = 11'b00000000110; //sfix11_En13
  parameter signed [10:0] coeff35 = 11'b11111101011; //sfix11_En13
  parameter signed [10:0] coeff36 = 11'b11111001000; //sfix11_En13
  parameter signed [10:0] coeff37 = 11'b11110100100; //sfix11_En13
  parameter signed [10:0] coeff38 = 11'b11110001010; //sfix11_En13
  parameter signed [10:0] coeff39 = 11'b11110000101; //sfix11_En13
  parameter signed [10:0] coeff40 = 11'b11110011100; //sfix11_En13
  parameter signed [10:0] coeff41 = 11'b11111010010; //sfix11_En13
  parameter signed [10:0] coeff42 = 11'b00000100010; //sfix11_En13
  parameter signed [10:0] coeff43 = 11'b00001111110; //sfix11_En13
  parameter signed [10:0] coeff44 = 11'b00011010101; //sfix11_En13
  parameter signed [10:0] coeff45 = 11'b00100010000; //sfix11_En13
  parameter signed [10:0] coeff46 = 11'b00100011100; //sfix11_En13
  parameter signed [10:0] coeff47 = 11'b00011110000; //sfix11_En13
  parameter signed [10:0] coeff48 = 11'b00010001011; //sfix11_En13
  parameter signed [10:0] coeff49 = 11'b11111111011; //sfix11_En13
  parameter signed [10:0] coeff50 = 11'b11101011001; //sfix11_En13
  parameter signed [10:0] coeff51 = 11'b11011000101; //sfix11_En13
  parameter signed [10:0] coeff52 = 11'b11001100001; //sfix11_En13
  parameter signed [10:0] coeff53 = 11'b11001000100; //sfix11_En13
  parameter signed [10:0] coeff54 = 11'b11001111011; //sfix11_En13
  parameter signed [10:0] coeff55 = 11'b11100000000; //sfix11_En13
  parameter signed [10:0] coeff56 = 11'b11110111101; //sfix11_En13
  parameter signed [10:0] coeff57 = 11'b00010001111; //sfix11_En13
  parameter signed [10:0] coeff58 = 11'b00101001101; //sfix11_En13
  parameter signed [10:0] coeff59 = 11'b00111010001; //sfix11_En13
  parameter signed [10:0] coeff60 = 11'b01000000000; //sfix11_En13

  parameter signed [10:0] const_zero = 11'b00000000000; //sfix11_En10
  // Signals
  reg  [5:0] cur_count; // ufix6
  wire phase_51; // boolean
  wire phase_0; // boolean
  wire signed [10:0] preaddmux_a1; // sfix11_En10
  wire signed [10:0] preaddmux_b1; // sfix11_En10
  wire signed [11:0] tapsum_1; // sfix12_En10
  wire signed [10:0] add_signext; // sfix11_En10
  wire signed [10:0] add_signext_1; // sfix11_En10
  wire signed [11:0] tapsum_mcand_1; // sfix12_En10
  reg  signed [28:0] acc_final; // sfix29_En23
  reg  signed [28:0] acc_out_1; // sfix29_En23
  wire signed [22:0] product_1; // sfix23_En23
  wire signed [10:0] product_1_mux; // sfix11_En13
  wire signed [28:0] prod_typeconvert_1; // sfix29_En23
  wire signed [28:0] acc_sum_1; // sfix29_En23
  wire signed [28:0] acc_in_1; // sfix29_En23
  wire signed [28:0] add_signext_2; // sfix29_En23
  wire signed [28:0] add_signext_3; // sfix29_En23
  wire signed [29:0] add_temp; // sfix30_En23
  reg  signed [28:0] output_register; // sfix29_En23

  // Block Statements
  always @ (posedge clk or posedge reset)
    begin: Counter_process
      if (reset == 1'b1) begin
        cur_count <= 6'b110111;
      end
      else begin
        if (clk_enable == 1'b1) begin
          if (cur_count >= 6'b110111) begin
            cur_count <= 6'b000000;
          end
          else begin
            cur_count <= cur_count + 6'b000001;
          end
        end
      end
    end // Counter_process

  assign  phase_51 = (cur_count == 6'b110011 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

  assign  phase_0 = (cur_count == 6'b000000 && clk_enable == 1'b1) ? 1'b1 : 1'b0;



  assign preaddmux_a1 = (cur_count == 6'b000000) ? delay_pipeline[5] :
                       (cur_count == 6'b000001) ? delay_pipeline[6] :
                       (cur_count == 6'b000010) ? delay_pipeline[7] :
                       (cur_count == 6'b000011) ? delay_pipeline[8] :
                       (cur_count == 6'b000100) ? delay_pipeline[9] :
                       (cur_count == 6'b000101) ? delay_pipeline[10] :
                       (cur_count == 6'b000110) ? delay_pipeline[12] :
                       (cur_count == 6'b000111) ? delay_pipeline[13] :
                       (cur_count == 6'b001000) ? delay_pipeline[14] :
                       (cur_count == 6'b001001) ? delay_pipeline[15] :
                       (cur_count == 6'b001010) ? delay_pipeline[16] :
                       (cur_count == 6'b001011) ? delay_pipeline[17] :
                       (cur_count == 6'b001100) ? delay_pipeline[18] :
                       (cur_count == 6'b001101) ? delay_pipeline[19] :
                       (cur_count == 6'b001110) ? delay_pipeline[20] :
                       (cur_count == 6'b001111) ? delay_pipeline[21] :
                       (cur_count == 6'b010000) ? delay_pipeline[22] :
                       (cur_count == 6'b010001) ? delay_pipeline[23] :
                       (cur_count == 6'b010010) ? delay_pipeline[24] :
                       (cur_count == 6'b010011) ? delay_pipeline[25] :
                       (cur_count == 6'b010100) ? delay_pipeline[28] :
                       (cur_count == 6'b010101) ? delay_pipeline[29] :
                       (cur_count == 6'b010110) ? delay_pipeline[30] :
                       (cur_count == 6'b010111) ? delay_pipeline[31] :
                       (cur_count == 6'b011000) ? delay_pipeline[32] :
                       (cur_count == 6'b011001) ? delay_pipeline[33] :
                       (cur_count == 6'b011010) ? delay_pipeline[34] :
                       (cur_count == 6'b011011) ? delay_pipeline[35] :
                       (cur_count == 6'b011100) ? delay_pipeline[36] :
                       (cur_count == 6'b011101) ? delay_pipeline[37] :
                       (cur_count == 6'b011110) ? delay_pipeline[38] :
                       (cur_count == 6'b011111) ? delay_pipeline[39] :
                       (cur_count == 6'b100000) ? delay_pipeline[40] :
                       (cur_count == 6'b100001) ? delay_pipeline[41] :
                       (cur_count == 6'b100010) ? delay_pipeline[42] :
                       (cur_count == 6'b100011) ? delay_pipeline[43] :
                       (cur_count == 6'b100100) ? delay_pipeline[44] :
                       (cur_count == 6'b100101) ? delay_pipeline[45] :
                       (cur_count == 6'b100110) ? delay_pipeline[46] :
                       (cur_count == 6'b100111) ? delay_pipeline[47] :
                       (cur_count == 6'b101000) ? delay_pipeline[48] :
                       (cur_count == 6'b101001) ? delay_pipeline[49] :
                       (cur_count == 6'b101010) ? delay_pipeline[50] :
                       (cur_count == 6'b101011) ? delay_pipeline[51] :
                       (cur_count == 6'b101100) ? delay_pipeline[52] :
                       (cur_count == 6'b101101) ? delay_pipeline[53] :
                       (cur_count == 6'b101110) ? delay_pipeline[54] :
                       (cur_count == 6'b101111) ? delay_pipeline[55] :
                       (cur_count == 6'b110000) ? delay_pipeline[56] :
                       (cur_count == 6'b110001) ? delay_pipeline[57] :
                       (cur_count == 6'b110010) ? delay_pipeline[58] :
                       delay_pipeline[59];
  assign preaddmux_b1 = (cur_count == 6'b000000) ? delay_pipeline[113] :
                       (cur_count == 6'b000001) ? delay_pipeline[112] :
                       (cur_count == 6'b000010) ? delay_pipeline[111] :
                       (cur_count == 6'b000011) ? delay_pipeline[110] :
                       (cur_count == 6'b000100) ? delay_pipeline[109] :
                       (cur_count == 6'b000101) ? delay_pipeline[108] :
                       (cur_count == 6'b000110) ? delay_pipeline[106] :
                       (cur_count == 6'b000111) ? delay_pipeline[105] :
                       (cur_count == 6'b001000) ? delay_pipeline[104] :
                       (cur_count == 6'b001001) ? delay_pipeline[103] :
                       (cur_count == 6'b001010) ? delay_pipeline[102] :
                       (cur_count == 6'b001011) ? delay_pipeline[101] :
                       (cur_count == 6'b001100) ? delay_pipeline[100] :
                       (cur_count == 6'b001101) ? delay_pipeline[99] :
                       (cur_count == 6'b001110) ? delay_pipeline[98] :
                       (cur_count == 6'b001111) ? delay_pipeline[97] :
                       (cur_count == 6'b010000) ? delay_pipeline[96] :
                       (cur_count == 6'b010001) ? delay_pipeline[95] :
                       (cur_count == 6'b010010) ? delay_pipeline[94] :
                       (cur_count == 6'b010011) ? delay_pipeline[93] :
                       (cur_count == 6'b010100) ? delay_pipeline[90] :
                       (cur_count == 6'b010101) ? delay_pipeline[89] :
                       (cur_count == 6'b010110) ? delay_pipeline[88] :
                       (cur_count == 6'b010111) ? delay_pipeline[87] :
                       (cur_count == 6'b011000) ? delay_pipeline[86] :
                       (cur_count == 6'b011001) ? delay_pipeline[85] :
                       (cur_count == 6'b011010) ? delay_pipeline[84] :
                       (cur_count == 6'b011011) ? delay_pipeline[83] :
                       (cur_count == 6'b011100) ? delay_pipeline[82] :
                       (cur_count == 6'b011101) ? delay_pipeline[81] :
                       (cur_count == 6'b011110) ? delay_pipeline[80] :
                       (cur_count == 6'b011111) ? delay_pipeline[79] :
                       (cur_count == 6'b100000) ? delay_pipeline[78] :
                       (cur_count == 6'b100001) ? delay_pipeline[77] :
                       (cur_count == 6'b100010) ? delay_pipeline[76] :
                       (cur_count == 6'b100011) ? delay_pipeline[75] :
                       (cur_count == 6'b100100) ? delay_pipeline[74] :
                       (cur_count == 6'b100101) ? delay_pipeline[73] :
                       (cur_count == 6'b100110) ? delay_pipeline[72] :
                       (cur_count == 6'b100111) ? delay_pipeline[71] :
                       (cur_count == 6'b101000) ? delay_pipeline[70] :
                       (cur_count == 6'b101001) ? delay_pipeline[69] :
                       (cur_count == 6'b101010) ? delay_pipeline[68] :
                       (cur_count == 6'b101011) ? delay_pipeline[67] :
                       (cur_count == 6'b101100) ? delay_pipeline[66] :
                       (cur_count == 6'b101101) ? delay_pipeline[65] :
                       (cur_count == 6'b101110) ? delay_pipeline[64] :
                       (cur_count == 6'b101111) ? delay_pipeline[63] :
                       (cur_count == 6'b110000) ? delay_pipeline[62] :
                       (cur_count == 6'b110001) ? delay_pipeline[61] :
                       (cur_count == 6'b110010) ? delay_pipeline[60] :
                       const_zero;
  assign add_signext = preaddmux_a1;
  assign add_signext_1 = preaddmux_b1;
  assign tapsum_1 = add_signext + add_signext_1;

  assign tapsum_mcand_1 = tapsum_1;

  //   ------------------ Serial partition # 1 ------------------

  assign product_1_mux = (cur_count == 6'b000000) ? coeff6 :
                        (cur_count == 6'b000001) ? coeff7 :
                        (cur_count == 6'b000010) ? coeff8 :
                        (cur_count == 6'b000011) ? coeff9 :
                        (cur_count == 6'b000100) ? coeff10 :
                        (cur_count == 6'b000101) ? coeff11 :
                        (cur_count == 6'b000110) ? coeff13 :
                        (cur_count == 6'b000111) ? coeff14 :
                        (cur_count == 6'b001000) ? coeff15 :
                        (cur_count == 6'b001001) ? coeff16 :
                        (cur_count == 6'b001010) ? coeff17 :
                        (cur_count == 6'b001011) ? coeff18 :
                        (cur_count == 6'b001100) ? coeff19 :
                        (cur_count == 6'b001101) ? coeff20 :
                        (cur_count == 6'b001110) ? coeff21 :
                        (cur_count == 6'b001111) ? coeff22 :
                        (cur_count == 6'b010000) ? coeff23 :
                        (cur_count == 6'b010001) ? coeff24 :
                        (cur_count == 6'b010010) ? coeff25 :
                        (cur_count == 6'b010011) ? coeff26 :
                        (cur_count == 6'b010100) ? coeff29 :
                        (cur_count == 6'b010101) ? coeff30 :
                        (cur_count == 6'b010110) ? coeff31 :
                        (cur_count == 6'b010111) ? coeff32 :
                        (cur_count == 6'b011000) ? coeff33 :
                        (cur_count == 6'b011001) ? coeff34 :
                        (cur_count == 6'b011010) ? coeff35 :
                        (cur_count == 6'b011011) ? coeff36 :
                        (cur_count == 6'b011100) ? coeff37 :
                        (cur_count == 6'b011101) ? coeff38 :
                        (cur_count == 6'b011110) ? coeff39 :
                        (cur_count == 6'b011111) ? coeff40 :
                        (cur_count == 6'b100000) ? coeff41 :
                        (cur_count == 6'b100001) ? coeff42 :
                        (cur_count == 6'b100010) ? coeff43 :
                        (cur_count == 6'b100011) ? coeff44 :
                        (cur_count == 6'b100100) ? coeff45 :
                        (cur_count == 6'b100101) ? coeff46 :
                        (cur_count == 6'b100110) ? coeff47 :
                        (cur_count == 6'b100111) ? coeff48 :
                        (cur_count == 6'b101000) ? coeff49 :
                        (cur_count == 6'b101001) ? coeff50 :
                        (cur_count == 6'b101010) ? coeff51 :
                        (cur_count == 6'b101011) ? coeff52 :
                        (cur_count == 6'b101100) ? coeff53 :
                        (cur_count == 6'b101101) ? coeff54 :
                        (cur_count == 6'b101110) ? coeff55 :
                        (cur_count == 6'b101111) ? coeff56 :
                        (cur_count == 6'b110000) ? coeff57 :
                        (cur_count == 6'b110001) ? coeff58 :
                        (cur_count == 6'b110010) ? coeff59 :
                        coeff60;
  assign product_1 = tapsum_mcand_1 * product_1_mux;

  assign prod_typeconvert_1 = $signed({{6{product_1[22]}}, product_1});

  assign add_signext_2 = prod_typeconvert_1;
  assign add_signext_3 = acc_out_1;
  assign add_temp = add_signext_2 + add_signext_3;
  assign acc_sum_1 = add_temp[28:0];

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
        if (phase_51 == 1'b1) begin
          output_register <= acc_final;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = output_register;
endmodule  // filter5
