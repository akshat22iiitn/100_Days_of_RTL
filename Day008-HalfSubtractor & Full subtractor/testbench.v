`timescale 1ns / 1ps



module testbench();
reg a,b,bin;
wire diff,bout;
  full_subtractor uut(a,b,bin,diff,bout)  ;
initial begin
a=0;b=0;bin=0; #10
a=0;b=0;bin=1; #10
a=0;b=1;bin=0; #10
a=0;b=1;bin=1; #10
a=1;b=0;bin=0; #10
a=1;b=0;bin=1; #10
a=1;b=1;bin=0; #10
a=1;b=1;bin=1; #10
$finish;
end 
endmodule
