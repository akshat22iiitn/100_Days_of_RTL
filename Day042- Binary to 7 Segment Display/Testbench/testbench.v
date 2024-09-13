`timescale 1ns / 1ps


module testbench;
reg [3:0] data;
reg reset,clk;
wire [6:0] out; 
binary_to_7segment uut(data,out); 
always #5 clk=~clk;
initial begin 
clk=1; 
 reset=0;  data=4'b1000; #10
 reset=0;  data=4'b0001; #10
 reset=0;  data=4'b0100; #10
 reset=0;  data=4'b0000; #10
 reset=1;  data=4'b0010; #10
 reset=0;  data=4'b0011; #10
 reset=1;  data=4'b0100; #10
 reset=0;  data=4'b1101; #10
 $finish;
 end 
endmodule
