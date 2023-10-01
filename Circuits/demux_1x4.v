`timescale 1ns / 1ps

module demux_1x4(
    output [3:0] out,
    input [1:0] sel,
    input in
    );
    
    wire [1:0] temp;
    
    assign temp = sel[1] ? {in,1'b0} : {1'b0,in};
    
    assign out[1:0] = sel[0] ? {temp[0],1'b0} : {1'b0,temp[0]};
    assign out[3:2] = sel[0] ? {temp[1],1'b0} : {1'b0,temp[1]};

endmodule
