`timescale 1ns / 1ps

module testbench;
reg [3:0] a; 
wire [3:0] g;
binary_to_gray uut(a,g);
initial begin
a=4'b0001; #10
a=4'b1111; #10
a=4'b0101; #10
$finish;
end
endmodule
