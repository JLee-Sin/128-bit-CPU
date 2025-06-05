`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 03:31:19 PM
// Design Name: 
// Module Name: Hald_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Hald_adder(
    input A,
    input B,
    output sum,
    output carry_out
    );
    assign sum=A^B;
    assign carry_out=A&B;
endmodule
