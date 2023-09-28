`timescale 1ns / 1ps

module CLA_Nb#(parameter N = 32)(
    output [N-1:0] sum,
    output cout,
    input [N-1:0] a,
    input [N-1:0] b,
    input cin
    );
    
    wire [N-1:0] p, g;
    wire [N:0] c;
    genvar i;
    
    assign p = a ^ b;
    assign g = a & b;
    assign c[0] = cin;
    
    generate
        for(i = 0; i < N; i = i + 1)
            begin: generate_N_bit_Adder
                assign c[i+1] = g[i] | (p[i] & c[i]);
            end
    endgenerate
    
    assign sum = p ^ c[N-1:0];
    assign cout = c[N];
    
endmodule
