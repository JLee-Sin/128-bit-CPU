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


module Half_adder(
    input a_0,
    input b_0,
    output s_0,
    output carry_out
    );
    assign s_0=a_0^b_0;
    assign carry_out=a_0&b_0;
endmodule
