`timescale 1ns / 1ps



module testbench;
reg d_in,clk,reset;
wire  [3:0] d_out;

serial uut(d_in,reset,clk,d_out);

always #5 clk=~clk; 
initial begin
clk=1; reset=1;
    d_in=0; #10
    d_in=1; #10
    d_in=0; #10
    d_in=1; #10
    d_in=0; #10
$finish;
end 
endmodule
