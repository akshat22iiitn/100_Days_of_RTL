`timescale 1ns / 1ps



module Testbench();
reg a,b,s;
wire o;
Mux_2x1 uut(s,a,b,o);
initial begin
a=0;b=0;s=0; #10
a=0;b=0;s=1; #10
a=0;b=1;s=0; #10
a=0;b=1;s=1; #10
a=1;b=0;s=0; #10
a=1;b=0;s=1; #10
a=1;b=1;s=0; #10
a=1;b=1;s=1; #10
$finish;
end
endmodule
