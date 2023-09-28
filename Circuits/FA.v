`timescale 1ns / 1ps

module FA(
    output sum,
    output cout,
    input a,
    input b,
    input cin
    );
    
    wire w1, w2, w3;
    
    //assign {cout,sum} = a + b + cin;
    
    HA HA1(w1,w2,a,b);
    HA HA2(sum,w3,w1,cin);
    
    assign cout = w2 | w3;
    
endmodule
