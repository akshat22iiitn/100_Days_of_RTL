`timescale 1ns / 1ps



module gray_to_binary(g,a);
input [3:0] g;
output [3:0] a; 
assign a[3]=g[3];
assign a[2]=g[3]^g[2];
assign a[1]=a[2]^g[1];
assign a[0]=a[1]^g[0];
endmodule
