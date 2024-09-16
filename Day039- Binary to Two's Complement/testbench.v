`timescale 1ns / 1ps



module testbench;
reg [3:0] data;
wire [3:0] out; 
binary_to_2s_complement uut(data,out);
initial begin 
 data=4'b0000; #10
 data=4'b1111; #10
 data=4'b0101; #10
 data=4'b0100; #10
 data=4'b0010; #10
 data=4'b1000; #10
 $finish;
 end 
endmodule
