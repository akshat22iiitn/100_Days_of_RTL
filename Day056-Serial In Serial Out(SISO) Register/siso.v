`timescale 1ns / 1ps
     //using behavioral modelling


module serial(d_in,reset,clk,d_out);
input d_in,reset,clk;
output reg [3:0]  d_out;
initial 
d_out=4'b0000;
always@(posedge clk) 
 if(!reset)
 d_out=4'b0000;
 else  
   d_out={d_in,d_out[3:1]};

endmodule
