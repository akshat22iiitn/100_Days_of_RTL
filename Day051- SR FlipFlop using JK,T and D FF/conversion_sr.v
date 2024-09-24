`timescale 1ns / 1ps



module conversion_sr(S,R,clk,reset,Q_t,Q,Q_b);
input S,R,clk,reset;
output Q,Q_t,Q_b;
wire w1,w2,w3;

assign Q_b=~Q;

 jk_flip_flop j1(S,R,reset,clk,Q,Q_b);  
 
 assign w1= S&~Q_t;
 assign w2= R&Q_t;
 assign w3=w1|w2;
 
 T_flipflop j2(w3,clk,reset,Q_t);
 
endmodule
