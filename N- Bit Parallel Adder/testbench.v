`timescale 1ns / 1ps

module testbench;
parameter n=4;
reg [n-1:0] A,B;
reg carry_in;
wire carry;
wire [n-1:0] sum;
initial begin
A=1;B=2;carry_in=0; #10
A=2;B=3;carry_in=1; #10
A=1;B=2;carry_in=1; #10
A=0;B=1;carry_in=0; #10
A=1;B=0;carry_in=1; #10
A=1;B=1;carry_in=1;  #10
$finish;
end
endmodule
