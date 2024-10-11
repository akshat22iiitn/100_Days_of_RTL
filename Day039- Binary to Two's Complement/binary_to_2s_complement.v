`timescale 1ns / 1ps



module binary_to_2s_complement(data,out);
input [3:0] data;
output [3:0] out; 
wire [3:0] temp; 
    assign temp=(~dat   a);
    assign out=temp+4'b0001;
endmodule
