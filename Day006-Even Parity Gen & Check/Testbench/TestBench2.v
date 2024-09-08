`timescale 1ns / 1ps

module TestBench2();
reg parity;
reg [2:0] b;
wire error;
parity_check uut(b,parity,error);
initial begin
  b=3'b001;parity=0; #10
  b=3'b111; parity=1; #10
  b=3'b101; parity=0; #10
  b=3'b011; parity=1; #10
$finish;
 end
endmodule
