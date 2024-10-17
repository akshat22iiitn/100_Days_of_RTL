`timescale 1ns / 1ps

module Half_adder(a,b,sum);   
input a,b; 
output sum; 
assign
  sum=(a^b);
endmodule
