`timescale 1ns / 1ps

module TestBench();
reg [7:0] d;
wire a,b,c;
    Encoder_3x8 uut(d,a,b,c);
initial begin
    d=00000001; #10
    d=00000010; #10
    d=00000100; #10
    d=00001000; #10
    d=00010000; #10
    d=00100000; #10
    d=01000000; #10
    d=10000000; #10
        $finish;
      end
endmodule
