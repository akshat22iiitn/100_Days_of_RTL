`timescale 1ns / 1ps

     
         
module square_gen(data,square,clk);    
parameter n=3;       
input [n-1:0] data;
input clk;
output reg [2*n-1:0] square; 
reg [2*n-1:0] temp;
always@(posedge clk) 
begin 
     temp=data*data;
     square=temp;
 end 
endmodule
