`timescale 1ns / 1ps

module mux_4x1(
    output out,
    input [1:0] sel,
    input a,
    input b,
    input c,
    input d
    );
    
    wire w1, w2;
    
    mux_2x1 m1(w1,sel[0],a,b);
    mux_2x1 m2(w2,sel[0],c,d);
    
    mux_2x1 m3(out,sel[1],w1,w2);
    
endmodule
