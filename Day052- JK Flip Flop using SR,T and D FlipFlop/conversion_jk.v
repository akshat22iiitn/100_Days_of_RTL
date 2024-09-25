`timescale 1ns / 1ps



module conversion_jk(clk,reset,qb,qsr,qd,qt,j,k);
input j,k,clk,reset;
output qb,qsr,qd,qt;
wire w1,w2,w3,w4,w5,w6,w7,w8;


assign  qb=~qsr;
 assign  w1=j&(~qsr);
 assign  w2=k&qsr; 
 SR_flipflop SR(w1,w2,clk,qsr,qb);
 
 assign w3=(~k)&qd;
 assign w4=j&(~qd);
 assign w5=w3|w4;
 D_flip_flop D(w5,reset,clk,qd);
 
 assign w6=j&(~qt);
 assign w7=k&qt;
 assign w8=w6|w7;
 
 T_flipflop T(w8,clk,reset,qt);
endmodule
