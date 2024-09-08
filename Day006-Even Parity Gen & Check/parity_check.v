`timescale 1ns / 1ps
module parity_check(b,parity,error);
input [2:0] b;
input parity;
output error; 
assign 
error= ^({b,parity});
endmodule
