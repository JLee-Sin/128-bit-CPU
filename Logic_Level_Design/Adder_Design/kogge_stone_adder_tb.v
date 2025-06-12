`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2025 10:16:02 PM
// Design Name: 
// Module Name: kogge_stone_adder_tb
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
`timescale 1ns/1ps

module kogge_stone_adder_tb;
    //DUT Connections
    reg a_0, a_1, a_2, a_3;
    reg b_0, b_1, b_2, b_3;
    
    wire carry_out_0, carry_out_1, carry_out_2, carry_out_3;
    wire sum_0, sum_1, sum_2, sum_3;
    
    //IP core
    koggie_stone_adder_0 dut (
        .a_0(a_0),
        .a_1(a_1),
        .a_2(a_2),
        .a_3(a_3),
        .b_0(b_0),
        .b_1(b_1),
        .b_2(b_2),
        .b_3(b_3),
        .carry_out_0(carry_out_0),
        .carry_out_1(carry_out_1),
        .carry_out_2(carry_out_2),
        .carry_out_3(carry_out_3),
        .sum_0(sum_0),
        .sum_1(sum_1),
        .sum_2(sum_2),
        .sum_3(sum_3)
    );
    
    //Convenience vectors
    wire [3:0] A = {a_3, a_2, a_1, a_0};
    wire [3:0] B = {b_3, b_2, b_1, b_0};
    wire [3:0] SUM = {sum_3, sum_2, sum_1, sum_0};
    wire [3:0] CARRY_OUT = {carry_out_3, carry_out_2, carry_out_1, carry_out_0};
    
    //Test setup
    integer ia, ib;
    reg [4:0] expected;
    
    //Test
    initial begin
    
        for(ia=0; ia<16; ia=ia+1) begin
            for(ib=0; ib<16; ib=ib+1) begin
            
                {a_3, a_2, a_1, a_0} = ia;
                {b_3, b_2, b_1, b_0} = ib;
                
                #10
                
                expected = ia + ib;
                if(SUM !== expected[3:0]) begin
                   $display("Error A=%0d B=%0d Expected=%05b Got=%b", ia, ib, expected, SUM);
                   $stop;
                end
            end
        end
        
        $display("All 0%d tests passed", 16*16);
        $finish;
    end       
    
endmodule
