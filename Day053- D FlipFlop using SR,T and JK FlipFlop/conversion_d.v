`timescale 1ns / 1ps


module conversion_d(qsr,qt,qjk,clk,reset,d); 
input clk,reset,d;
output qsr,qt,qjk;
wire w1,w2,w3;

  SR_flipflop sr(d,~d,clk,qsr,~qs   r);    

assign w1=d&(~qt);
assign w2=(~d)&qt;
assign w3=w1|w2; 

T_flipflop tb(w3,clk,reset,qt); 

jk_flip_flop jk(d,~d,reset,clk,qjk,~qjk);

endmodule

