`timescale 1ns / 1ps

module Adder_4b(
    output [3:0] sum,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
    );
    
    assign {cout,sum} = a + b + cin;
    
endmodule
