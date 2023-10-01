`timescale 1ns / 1ps

module mux_8x1(
    output out,
    input [2:0] sel,
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    input g,
    input h
    );
    
    wire [7:0] temp;
    
    assign temp = {h,g,f,e,d,c,b,a};
    assign out = temp[sel];
    
endmodule
