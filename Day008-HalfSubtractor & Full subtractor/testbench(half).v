`timescale 1ns / 1ps
module testbench();
reg a,b; 
wire bout,diff;

half_subtractor uut(a,b,bout,diff);
initial begin
a=0;b=0; #10
a=0;b=1; #10
a=1;b=0; #10
a=1;b=1; #10
$finish;
end
endmodule
