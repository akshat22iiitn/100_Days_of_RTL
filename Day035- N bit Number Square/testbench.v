`timescale 1ns / 1ps



module testbench;
parameter n=3; 
reg [n-1:0] data;
reg clk;
wire [2*n-1:0] square;
square_gen uut(data,square,clk);
  always #5 clk=~clk; 
  initial begin 
    clk=1; 
         data=3'b000; #10
         data=3'b001; #10
         data=3'b010; #10
         data=3'b011; #10
         data=3'b100; #10
         data=3'b101; #10
         data=3'b110; #10
         data=3'b111; #10
         $finish;
  end
endmodule
