`timescale 1ns / 1ps

module testbench();
reg [7:0] a,b; 
wire lesser,greater,equal;
N_bit_comparator uut(a,b,lesser,greater,equal);
initial begin 
a=0;b=0; #10
a=1;b=2; #10
a=3;b=1; #10
a=0;b=4; #10
a=6;b=6; #10
a=7;b=6; #10
a=1;b=0; #10
$finish;
end
endmodule
