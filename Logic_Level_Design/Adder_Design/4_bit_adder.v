// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jun  3 02:29:48 2025
// Host        : DESKTOP-Quiran running 64-bit major release  (build 9200)
// Command     : write_verilog D:/project_1.v
// Design      : Hald_adder
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module Hald_adder
   (A,
    B,
    sum,
    carry_out);
  input A;
  input B;
  output sum;
  output carry_out;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire carry_out;
  wire carry_out_OBUF;
  wire sum;
  wire sum_OBUF;

  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  OBUF carry_out_OBUF_inst
       (.I(carry_out_OBUF),
        .O(carry_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    carry_out_OBUF_inst_i_1
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .O(carry_out_OBUF));
  OBUF sum_OBUF_inst
       (.I(sum_OBUF),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sum_OBUF_inst_i_1
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .O(sum_OBUF));
endmodule
