`timescale 1ns / 1ps



module testbench;
reg  j,k,clk,reset;
wire q,qb; 
 jk_flip_flop uut(j,k,reset,clk,q,qb);
 always #5 clk=~clk;
 initial begin 
 clk=1;
  reset=0; j=0; k=0; #10
  reset=0; j=0; k=1; #10
  reset=0; j=1; k=0; #10
  reset=0; j=1; k=1; #10
  reset=1; j=0; k=0; #10
  reset=1; j=0; k=1; #10
  reset=1; j=1; k=0; #10
  reset=1; j=1; k=1; #10
  $finish;
  end 
  
endmodule
