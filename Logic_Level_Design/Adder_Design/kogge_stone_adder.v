//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue May 27 18:23:06 2025
//Host        : DESKTOP-Quiran running 64-bit major release  (build 9200)
//Command     : generate_target kogge_stone_adder.bd
//Design      : kogge_stone_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "kogge_stone_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kogge_stone_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "kogge_stone_adder.hwdef" *) 
module kogge_stone_adder
   ();

  wire half_adder_0_carry_out;
  wire half_adder_1_carry_out;
  wire half_adder_1_sum;
  wire half_adder_2_carry_out;
  wire half_adder_2_sum;
  wire half_adder_3_sum;
  wire half_adder_4_carry_out;
  wire half_adder_5_carry_out;
  wire half_adder_5_sum;
  wire half_adder_6_sum;
  wire half_adder_7_carry_out;
  wire half_adder_8_sum;

  kogge_stone_adder_half_adder_0_4 half_adder_0
       (.A(1'b0),
        .B(1'b0),
        .carry_out(half_adder_0_carry_out));
  kogge_stone_adder_half_adder_0_5 half_adder_1
       (.A(1'b0),
        .B(1'b0),
        .carry_out(half_adder_1_carry_out),
        .sum(half_adder_1_sum));
  kogge_stone_adder_half_adder_0_6 half_adder_2
       (.A(1'b0),
        .B(1'b0),
        .carry_out(half_adder_2_carry_out),
        .sum(half_adder_2_sum));
  kogge_stone_adder_half_adder_0_7 half_adder_3
       (.A(1'b0),
        .B(1'b0),
        .sum(half_adder_3_sum));
  kogge_stone_adder_half_adder_0_8 half_adder_4
       (.A(half_adder_0_carry_out),
        .B(half_adder_1_sum),
        .carry_out(half_adder_4_carry_out));
  kogge_stone_adder_half_adder_0_9 half_adder_5
       (.A(half_adder_1_carry_out),
        .B(half_adder_2_sum),
        .carry_out(half_adder_5_carry_out),
        .sum(half_adder_5_sum));
  kogge_stone_adder_half_adder_0_10 half_adder_6
       (.A(half_adder_2_carry_out),
        .B(half_adder_3_sum),
        .sum(half_adder_6_sum));
  kogge_stone_adder_half_adder_0_11 half_adder_7
       (.A(half_adder_4_carry_out),
        .B(half_adder_5_sum),
        .carry_out(half_adder_7_carry_out));
  kogge_stone_adder_half_adder_7_0 half_adder_8
       (.A(half_adder_5_carry_out),
        .B(half_adder_6_sum),
        .sum(half_adder_8_sum));
  kogge_stone_adder_half_adder_7_1 half_adder_9
       (.A(half_adder_7_carry_out),
        .B(half_adder_8_sum));
endmodule
