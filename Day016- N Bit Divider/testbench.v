`timescale 1ns / 1ps



module testbench;
parameter N=4;
reg clk;
reg [N-1:0] dividend,divisor;
wire [N-1:0] quotient,remainder;

n_bit_divider uut(divisor,dividend,remainder,quotient,clk);

initial 
forever #5 clk=~clk;

initial
  begin 
clk=1;
  dividend=4'b001 ;divisor=4'b0001; #10 
  dividend=4'b1111; divisor=4'b0100; #10
  dividend=4'b1000; divisor=4'b1000; #10
  dividend=4'b1100; divisor=4'b1110; #10
  dividend=4'b1010; divisor=4'b1110; #10
  dividend=4'b1110; divisor=4'b1010; #10
  
$finish;
  end
endmodule
