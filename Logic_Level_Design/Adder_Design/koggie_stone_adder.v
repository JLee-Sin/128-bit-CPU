//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue May 27 18:23:06 2025
//Host        : DESKTOP-Quiran running 64-bit major release  (build 9200)
//Command     : generate_target koggie_stone_adder.bd
//Design      : koggie_stone_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "koggie_stone_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=koggie_stone_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "koggie_stone_adder.hwdef" *) 
module koggie_stone_adder
   ();

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

  koggie_stone_adder_Hald_adder_0_4 Hald_adder_0
       (.A(1'b0),
        .B(1'b0),
        .carry_out(Hald_adder_0_carry_out));
  koggie_stone_adder_Hald_adder_0_5 Hald_adder_1
       (.A(1'b0),
        .B(1'b0),
        .carry_out(Hald_adder_1_carry_out),
        .sum(Hald_adder_1_sum));
  koggie_stone_adder_Hald_adder_0_6 Hald_adder_2
       (.A(1'b0),
        .B(1'b0),
        .carry_out(Hald_adder_2_carry_out),
        .sum(Hald_adder_2_sum));
  koggie_stone_adder_Hald_adder_0_7 Hald_adder_3
       (.A(1'b0),
        .B(1'b0),
        .sum(Hald_adder_3_sum));
  koggie_stone_adder_Hald_adder_0_8 Hald_adder_4
       (.A(Hald_adder_0_carry_out),
        .B(Hald_adder_1_sum),
        .carry_out(Hald_adder_4_carry_out));
  koggie_stone_adder_Hald_adder_0_9 Hald_adder_5
       (.A(Hald_adder_1_carry_out),
        .B(Hald_adder_2_sum),
        .carry_out(Hald_adder_5_carry_out),
        .sum(Hald_adder_5_sum));
  koggie_stone_adder_Hald_adder_0_10 Hald_adder_6
       (.A(Hald_adder_2_carry_out),
        .B(Hald_adder_3_sum),
        .sum(Hald_adder_6_sum));
  koggie_stone_adder_Hald_adder_0_11 Hald_adder_7
       (.A(Hald_adder_4_carry_out),
        .B(Hald_adder_5_sum),
        .carry_out(Hald_adder_7_carry_out));
  koggie_stone_adder_Hald_adder_7_0 Hald_adder_8
       (.A(Hald_adder_5_carry_out),
        .B(Hald_adder_6_sum),
        .sum(Hald_adder_8_sum));
  koggie_stone_adder_Hald_adder_7_1 Hald_adder_9
       (.A(Hald_adder_7_carry_out),
        .B(Hald_adder_8_sum));
endmodule
