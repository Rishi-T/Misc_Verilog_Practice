`timescale 1ns / 1ps

module BCDA_1d(
    output [3:0] sum,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
    );
    
    wire [3:0] t1, t2;
    wire c1, c2;
    
    Adder_4b A1(t1,c1,a,b,cin);
    assign c2 = c1 | (t1[3] & (t1[2] | t1[1]));
    assign t2 = {1'b0,c2,c2,1'b0};
    
    Adder_4b A2(sum,,t1,t2,);
    assign cout = c2;
    
endmodule
