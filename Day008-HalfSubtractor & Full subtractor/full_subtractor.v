`timescale 1ns / 1ps
module full_subtractor(a,b,bin,diff,bout);
input a,b,bin;
output diff,bout;
assign diff=a^b^bin;
assign bout=(b&bin)|(~a)&(b^bin);
endmodule
