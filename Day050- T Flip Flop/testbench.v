`timescale 1ns / 1ps




module testbench;
reg t,clk,reset;
wire q; 
T_flipflop uut(t,clk,reset,q);
always #5 clk=~clk;
initial begin 
          clk=1;
        reset=0; t=0;  #10 
        reset=0; t=1; #10
        reset=1; t=0; #10
        reset=1; t=1; #10
 $finish;
 end 
endmodule
