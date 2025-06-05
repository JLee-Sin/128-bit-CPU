//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Thu Jun  5 18:17:51 2025
//Host        : DESKTOP-Quiran running 64-bit major release  (build 9200)
//Command     : generate_target koggie_stone_adder.bd
//Design      : koggie_stone_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "koggie_stone_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=koggie_stone_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=Singular}" *) (* HW_HANDOFF = "koggie_stone_adder.hwdef" *) 
module koggie_stone_adder
   (a_0,
    a_1,
    a_2,
    a_3,
    b_0,
    b_1,
    b_2,
    b_3,
    carry_out_0,
    carry_out_1,
    carry_out_2,
    carry_out_3,
    sum_0,
    sum_1,
    sum_2,
    sum_3);
  input a_0;
  input a_1;
  input a_2;
  input a_3;
  input b_0;
  input b_1;
  input b_2;
  input b_3;
  output carry_out_0;
  output carry_out_1;
  output carry_out_2;
  output carry_out_3;
  output sum_0;
  output sum_1;
  output sum_2;
  output sum_3;

  wire Hald_adder_0_carry_out;
  wire Hald_adder_1_carry_out;
  wire Hald_adder_1_sum;
  wire Hald_adder_2_carry_out;
  wire Hald_adder_2_sum;
  wire Hald_adder_3_sum;
  wire Hald_adder_4_carry_out;
  wire Hald_adder_5_carry_out;
  wire Hald_adder_5_sum;
  wire Hald_adder_6_sum;
  wire Hald_adder_7_carry_out;
  wire Hald_adder_8_sum;
  wire a_0;
  wire a_1;
  wire a_2;
  wire a_3;
  wire b_0;
  wire b_1;
  wire b_2;
  wire b_3;
  wire carry_out_0;
  wire carry_out_1;
  wire carry_out_2;
  wire carry_out_3;
  wire sum_0;
  wire sum_1;
  wire sum_2;
  wire sum_3;

  koggie_stone_adder_Hald_adder_0_4 Hald_adder_0
       (.A(a_0),
        .B(b_0),
        .carry_out(Hald_adder_0_carry_out),
        .sum(sum_0));
  koggie_stone_adder_Hald_adder_0_5 Hald_adder_1
       (.A(a_1),
        .B(b_1),
        .carry_out(Hald_adder_1_carry_out),
        .sum(Hald_adder_1_sum));
  koggie_stone_adder_Hald_adder_0_6 Hald_adder_2
       (.A(a_2),
        .B(b_2),
        .carry_out(Hald_adder_2_carry_out),
        .sum(Hald_adder_2_sum));
  koggie_stone_adder_Hald_adder_0_7 Hald_adder_3
       (.A(a_3),
        .B(b_3),
        .carry_out(carry_out_3),
        .sum(Hald_adder_3_sum));
  koggie_stone_adder_Hald_adder_0_8 Hald_adder_4
       (.A(Hald_adder_0_carry_out),
        .B(Hald_adder_1_sum),
        .carry_out(Hald_adder_4_carry_out),
        .sum(sum_1));
  koggie_stone_adder_Hald_adder_0_9 Hald_adder_5
       (.A(Hald_adder_1_carry_out),
        .B(Hald_adder_2_sum),
        .carry_out(Hald_adder_5_carry_out),
        .sum(Hald_adder_5_sum));
  koggie_stone_adder_Hald_adder_0_10 Hald_adder_6
       (.A(Hald_adder_2_carry_out),
        .B(Hald_adder_3_sum),
        .carry_out(carry_out_2),
        .sum(Hald_adder_6_sum));
  koggie_stone_adder_Hald_adder_0_11 Hald_adder_7
       (.A(Hald_adder_4_carry_out),
        .B(Hald_adder_5_sum),
        .carry_out(Hald_adder_7_carry_out),
        .sum(sum_2));
  koggie_stone_adder_Hald_adder_7_0 Hald_adder_8
       (.A(Hald_adder_5_carry_out),
        .B(Hald_adder_6_sum),
        .carry_out(carry_out_1),
        .sum(Hald_adder_8_sum));
  koggie_stone_adder_Hald_adder_7_1 Hald_adder_9
       (.A(Hald_adder_7_carry_out),
        .B(Hald_adder_8_sum),
        .carry_out(carry_out_0),
        .sum(sum_3));
endmodule
