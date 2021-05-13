// -------------------------------------------------------------
//
// Module: filter13
// Generated by MATLAB(R) 9.8 and Filter Design HDL Coder 3.1.7.
// Generated on: 2021-05-12 22:35:05
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter13
// SerialPartition: 60
// InputDataType: numerictype(1,13,12)
// TargetLanguage: Verilog
// TestBenchName: testbench13

// -------------------------------------------------------------
// HDL Implementation    : Fully Serial
// Folding Factor        : 60
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

module filter13
               (
                clk,
                clk_enable,
                reset,
                filter_in,
                delay_pipeline,
                filter_out,
                phase_59
                );

  input   clk; 
  input   clk_enable; 
  input   reset; 
  input   signed [12:0] filter_in; //sfix13_En12
  input   signed [12:0] delay_pipeline [0:118] ; // sfix13_En12
  output  signed [32:0] filter_out; //sfix33_En27
  output wire phase_59; // boolean

////////////////////////////////////////////////////////////////
//Module Architecture: filter13
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter signed [12:0] coeff1 = 13'b0000000000001; //sfix13_En15
  parameter signed [12:0] coeff2 = 13'b1111111111111; //sfix13_En15
  parameter signed [12:0] coeff3 = 13'b1111111111110; //sfix13_En15
  parameter signed [12:0] coeff4 = 13'b0000000000010; //sfix13_En15
  parameter signed [12:0] coeff5 = 13'b0000000000100; //sfix13_En15
  parameter signed [12:0] coeff6 = 13'b1111111111101; //sfix13_En15
  parameter signed [12:0] coeff7 = 13'b1111111111010; //sfix13_En15
  parameter signed [12:0] coeff8 = 13'b0000000000100; //sfix13_En15
  parameter signed [12:0] coeff9 = 13'b0000000000111; //sfix13_En15
  parameter signed [12:0] coeff10 = 13'b1111111111011; //sfix13_En15
  parameter signed [12:0] coeff11 = 13'b1111111111001; //sfix13_En15
  parameter signed [12:0] coeff12 = 13'b0000000000100; //sfix13_En15
  parameter signed [12:0] coeff13 = 13'b0000000000100; //sfix13_En15
  parameter signed [12:0] coeff14 = 13'b1111111111111; //sfix13_En15
  parameter signed [12:0] coeff15 = 13'b0000000000011; //sfix13_En15
  parameter signed [12:0] coeff16 = 13'b1111111111001; //sfix13_En15
  parameter signed [12:0] coeff17 = 13'b1111111110010; //sfix13_En15
  parameter signed [12:0] coeff18 = 13'b0000000010100; //sfix13_En15
  parameter signed [12:0] coeff19 = 13'b0000000011111; //sfix13_En15
  parameter signed [12:0] coeff20 = 13'b1111111011000; //sfix13_En15
  parameter signed [12:0] coeff21 = 13'b1111111001101; //sfix13_En15
  parameter signed [12:0] coeff22 = 13'b0000001000011; //sfix13_En15
  parameter signed [12:0] coeff23 = 13'b0000001001001; //sfix13_En15
  parameter signed [12:0] coeff24 = 13'b1111110011101; //sfix13_En15
  parameter signed [12:0] coeff25 = 13'b1111110100001; //sfix13_En15
  parameter signed [12:0] coeff26 = 13'b0000010000100; //sfix13_En15
  parameter signed [12:0] coeff27 = 13'b0000001110000; //sfix13_En15
  parameter signed [12:0] coeff28 = 13'b1111101011110; //sfix13_En15
  parameter signed [12:0] coeff29 = 13'b1111110001000; //sfix13_En15
  parameter signed [12:0] coeff30 = 13'b0000010110011; //sfix13_En15
  parameter signed [12:0] coeff31 = 13'b0000001110100; //sfix13_En15
  parameter signed [12:0] coeff32 = 13'b1111101010000; //sfix13_En15
  parameter signed [12:0] coeff33 = 13'b1111110100000; //sfix13_En15
  parameter signed [12:0] coeff34 = 13'b0000010001110; //sfix13_En15
  parameter signed [12:0] coeff35 = 13'b0000000111010; //sfix13_En15
  parameter signed [12:0] coeff36 = 13'b1111110111110; //sfix13_En15
  parameter signed [12:0] coeff37 = 13'b1111111111100; //sfix13_En15
  parameter signed [12:0] coeff38 = 13'b1111111000011; //sfix13_En15
  parameter signed [12:0] coeff39 = 13'b1111111000001; //sfix13_En15
  parameter signed [12:0] coeff40 = 13'b0000011110010; //sfix13_En15
  parameter signed [12:0] coeff41 = 13'b0000010001010; //sfix13_En15
  parameter signed [12:0] coeff42 = 13'b1111000100001; //sfix13_En15
  parameter signed [12:0] coeff43 = 13'b1111100101010; //sfix13_En15
  parameter signed [12:0] coeff44 = 13'b0001100000000; //sfix13_En15
  parameter signed [12:0] coeff45 = 13'b0000100011010; //sfix13_En15
  parameter signed [12:0] coeff46 = 13'b1101110110110; //sfix13_En15
  parameter signed [12:0] coeff47 = 13'b1111010110100; //sfix13_En15
  parameter signed [12:0] coeff48 = 13'b0010110101100; //sfix13_En15
  parameter signed [12:0] coeff49 = 13'b0000101100110; //sfix13_En15
  parameter signed [12:0] coeff50 = 13'b1100011101110; //sfix13_En15
  parameter signed [12:0] coeff51 = 13'b1111010011110; //sfix13_En15
  parameter signed [12:0] coeff52 = 13'b0100001100101; //sfix13_En15
  parameter signed [12:0] coeff53 = 13'b0000100111111; //sfix13_En15
  parameter signed [12:0] coeff54 = 13'b1011001110101; //sfix13_En15
  parameter signed [12:0] coeff55 = 13'b1111100000011; //sfix13_En15
  parameter signed [12:0] coeff56 = 13'b0101001110000; //sfix13_En15
  parameter signed [12:0] coeff57 = 13'b0000010100011; //sfix13_En15
  parameter signed [12:0] coeff58 = 13'b1010011111111; //sfix13_En15
  parameter signed [12:0] coeff59 = 13'b1111111001000; //sfix13_En15
  parameter signed [12:0] coeff60 = 13'b0101100110011; //sfix13_En15

  parameter signed [12:0] const_zero = 13'b0000000000000; //sfix13_En12
  // Signals
  reg  [5:0] cur_count; // ufix6
  wire phase_0; // boolean
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

  assign  phase_59 = (cur_count == 6'b111011 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

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
                       (cur_count == 6'b011011) ? delay_pipeline[27] :
                       (cur_count == 6'b011100) ? delay_pipeline[28] :
                       (cur_count == 6'b011101) ? delay_pipeline[29] :
                       (cur_count == 6'b011110) ? delay_pipeline[30] :
                       (cur_count == 6'b011111) ? delay_pipeline[31] :
                       (cur_count == 6'b100000) ? delay_pipeline[32] :
                       (cur_count == 6'b100001) ? delay_pipeline[33] :
                       (cur_count == 6'b100010) ? delay_pipeline[34] :
                       (cur_count == 6'b100011) ? delay_pipeline[35] :
                       (cur_count == 6'b100100) ? delay_pipeline[36] :
                       (cur_count == 6'b100101) ? delay_pipeline[37] :
                       (cur_count == 6'b100110) ? delay_pipeline[38] :
                       (cur_count == 6'b100111) ? delay_pipeline[39] :
                       (cur_count == 6'b101000) ? delay_pipeline[40] :
                       (cur_count == 6'b101001) ? delay_pipeline[41] :
                       (cur_count == 6'b101010) ? delay_pipeline[42] :
                       (cur_count == 6'b101011) ? delay_pipeline[43] :
                       (cur_count == 6'b101100) ? delay_pipeline[44] :
                       (cur_count == 6'b101101) ? delay_pipeline[45] :
                       (cur_count == 6'b101110) ? delay_pipeline[46] :
                       (cur_count == 6'b101111) ? delay_pipeline[47] :
                       (cur_count == 6'b110000) ? delay_pipeline[48] :
                       (cur_count == 6'b110001) ? delay_pipeline[49] :
                       (cur_count == 6'b110010) ? delay_pipeline[50] :
                       (cur_count == 6'b110011) ? delay_pipeline[51] :
                       (cur_count == 6'b110100) ? delay_pipeline[52] :
                       (cur_count == 6'b110101) ? delay_pipeline[53] :
                       (cur_count == 6'b110110) ? delay_pipeline[54] :
                       (cur_count == 6'b110111) ? delay_pipeline[55] :
                       (cur_count == 6'b111000) ? delay_pipeline[56] :
                       (cur_count == 6'b111001) ? delay_pipeline[57] :
                       (cur_count == 6'b111010) ? delay_pipeline[58] :
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
                       (cur_count == 6'b011011) ? delay_pipeline[91] :
                       (cur_count == 6'b011100) ? delay_pipeline[90] :
                       (cur_count == 6'b011101) ? delay_pipeline[89] :
                       (cur_count == 6'b011110) ? delay_pipeline[88] :
                       (cur_count == 6'b011111) ? delay_pipeline[87] :
                       (cur_count == 6'b100000) ? delay_pipeline[86] :
                       (cur_count == 6'b100001) ? delay_pipeline[85] :
                       (cur_count == 6'b100010) ? delay_pipeline[84] :
                       (cur_count == 6'b100011) ? delay_pipeline[83] :
                       (cur_count == 6'b100100) ? delay_pipeline[82] :
                       (cur_count == 6'b100101) ? delay_pipeline[81] :
                       (cur_count == 6'b100110) ? delay_pipeline[80] :
                       (cur_count == 6'b100111) ? delay_pipeline[79] :
                       (cur_count == 6'b101000) ? delay_pipeline[78] :
                       (cur_count == 6'b101001) ? delay_pipeline[77] :
                       (cur_count == 6'b101010) ? delay_pipeline[76] :
                       (cur_count == 6'b101011) ? delay_pipeline[75] :
                       (cur_count == 6'b101100) ? delay_pipeline[74] :
                       (cur_count == 6'b101101) ? delay_pipeline[73] :
                       (cur_count == 6'b101110) ? delay_pipeline[72] :
                       (cur_count == 6'b101111) ? delay_pipeline[71] :
                       (cur_count == 6'b110000) ? delay_pipeline[70] :
                       (cur_count == 6'b110001) ? delay_pipeline[69] :
                       (cur_count == 6'b110010) ? delay_pipeline[68] :
                       (cur_count == 6'b110011) ? delay_pipeline[67] :
                       (cur_count == 6'b110100) ? delay_pipeline[66] :
                       (cur_count == 6'b110101) ? delay_pipeline[65] :
                       (cur_count == 6'b110110) ? delay_pipeline[64] :
                       (cur_count == 6'b110111) ? delay_pipeline[63] :
                       (cur_count == 6'b111000) ? delay_pipeline[62] :
                       (cur_count == 6'b111001) ? delay_pipeline[61] :
                       (cur_count == 6'b111010) ? delay_pipeline[60] :
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
                        (cur_count == 6'b011011) ? coeff28 :
                        (cur_count == 6'b011100) ? coeff29 :
                        (cur_count == 6'b011101) ? coeff30 :
                        (cur_count == 6'b011110) ? coeff31 :
                        (cur_count == 6'b011111) ? coeff32 :
                        (cur_count == 6'b100000) ? coeff33 :
                        (cur_count == 6'b100001) ? coeff34 :
                        (cur_count == 6'b100010) ? coeff35 :
                        (cur_count == 6'b100011) ? coeff36 :
                        (cur_count == 6'b100100) ? coeff37 :
                        (cur_count == 6'b100101) ? coeff38 :
                        (cur_count == 6'b100110) ? coeff39 :
                        (cur_count == 6'b100111) ? coeff40 :
                        (cur_count == 6'b101000) ? coeff41 :
                        (cur_count == 6'b101001) ? coeff42 :
                        (cur_count == 6'b101010) ? coeff43 :
                        (cur_count == 6'b101011) ? coeff44 :
                        (cur_count == 6'b101100) ? coeff45 :
                        (cur_count == 6'b101101) ? coeff46 :
                        (cur_count == 6'b101110) ? coeff47 :
                        (cur_count == 6'b101111) ? coeff48 :
                        (cur_count == 6'b110000) ? coeff49 :
                        (cur_count == 6'b110001) ? coeff50 :
                        (cur_count == 6'b110010) ? coeff51 :
                        (cur_count == 6'b110011) ? coeff52 :
                        (cur_count == 6'b110100) ? coeff53 :
                        (cur_count == 6'b110101) ? coeff54 :
                        (cur_count == 6'b110110) ? coeff55 :
                        (cur_count == 6'b110111) ? coeff56 :
                        (cur_count == 6'b111000) ? coeff57 :
                        (cur_count == 6'b111001) ? coeff58 :
                        (cur_count == 6'b111010) ? coeff59 :
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
        if (phase_59 == 1'b1) begin
          output_register <= acc_final;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = output_register;
endmodule  // filter13
