`timescale 1ns / 1ps

module Testbench();
reg a,b;
wire sum;
Half_adder uut(a,b,sum);
initial begin
a=0;b=0; #10
a=0;b=1; #10
a=1;b=0; #10
a=1; b=1; #10
$finish;
end
endmodule
