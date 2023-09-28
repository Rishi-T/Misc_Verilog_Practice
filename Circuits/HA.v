`timescale 1ns / 1ps

module HA(
    output sum,
    output cout,
    input a,
    input b
    );
    
    assign sum = a ^ b;
    assign cout = a & b;
    
endmodule
