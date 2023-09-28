`timescale 1ns / 1ps

module RCA_Nb#(parameter N = 32)(
    output [N-1:0] sum,
    output cout,
    input [N-1:0] a,
    input [N-1:0] b,
    input cin
    );
    
    wire [N:0] c;
    genvar i;
    
    assign c[0] = cin;
    
    generate
        for(i = 0; i < N; i = i + 1)
            begin: generate_N_bit_Adder
                //if(i==0)
                //    HA f(sum[i],c[i+1],a[i],b[i]);
                //else
                //    FA f(sum[i],c[i+1],a[i],b[i],c[i]);
                FA f(sum[i],c[i+1],a[i],b[i],c[i]);
            end
    endgenerate
    
    assign cout = c[N];
    
endmodule
