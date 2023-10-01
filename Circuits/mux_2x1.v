`timescale 1ns / 1ps

module mux_2x1(
    output out,
    input sel,
    input a,
    input b
    );
    
    assign out = sel ? b : a;
    
endmodule
