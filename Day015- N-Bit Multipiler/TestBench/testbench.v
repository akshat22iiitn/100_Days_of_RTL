`timescale 1ns / 1ps



module testbench;
parameter N=4;
reg [N-1:0] a,b; 
wire [7:0] out;
 multiplier uut(a,b,out);
initial begin 
a=4'b0000; b=4'b0001; #10
a=4'b0001; b=4'b0101; #10 
a=4'b1011; b=4'b1000; #10 
a=4'b1111; b=4'b1111; #10 
$finish;
end 
endmodule
