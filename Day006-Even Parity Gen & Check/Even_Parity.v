`timescale 1ns / 1ps

module Even_Parity(b,p);
  input [2:0]b; 
output  p; 
assign
  p=b[2]&&(~b[1])&&(~b[0]) || (~b[1])&&b[0]&&(~b[2]) || (b[2]&&b[1]&&b[0]) || (~b[2])&&b[1]&&(~b[0]);   
endmodule
