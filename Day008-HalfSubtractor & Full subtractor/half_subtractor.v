`timescale 1ns / 1ps

module half_subtractor(a,b,bout,diff)       ;
input a,b; 
output bout,diff; 
assign bout=(~a)&b;
assign diff=a^b;
endmodule
