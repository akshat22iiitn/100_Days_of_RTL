`timescale 1ns / 1ps



module testbench;
reg S,R,clk,reset;
wire Q_b,Q_t,Q;
 conversion_sr dut(S,R,clk,reset,Q_t,Q,Q_b);
 initial begin
 clk=0;
 forever #5 clk=~clk;
 end 

initial begin 
   S=0; R=0;reset=0;  #10
   S=0; R=1;reset=0; #10
   S=1; R=0;reset=0; #10
   S=1; R=1; reset=0; #10
   S=1; R=1; reset=1; #10
   S=1; R=1; reset=0; #10
   S=1; R=1; reset=1; #10
   S=1; R=1; reset=0;#10
 
$finish;
end 
endmodule
