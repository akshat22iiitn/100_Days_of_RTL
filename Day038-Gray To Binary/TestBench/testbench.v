`timescale 1ns / 1ps


module testbench;
reg [3:0] g;
wire [3:0] a; 
 gray_to_binary uut(g,a);
 initial begin 
 g=4'b0000;#10
 g=4'b0001;#10
 g=4'b0100;#10
 g=4'b0101;#10
 g=4'b1111;#10
 g=4'b1001;#10
 g=4'b0110;#10
 $finish;
 end 
endmodule
