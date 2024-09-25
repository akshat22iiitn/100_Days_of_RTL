`timescale 1ns / 1ps


module testbench;
reg j,k,clk,reset;
wire qb,qsr,qd,qt; 

conversion_jk dut(clk,reset,qb,qsr,qd,qt,j,k);
 initial forever #5 clk=~clk;
 
 initial 
    begin
       clk=1; 
       j=0; k=0; reset=0; #10
       j=0; k=1;reset=0; #10
       j=1; k=0;reset=0; #10
       j=1; k=1; reset=0;#10
       j=0; k=0; reset=1;#10
       j=0; k=1; reset=1;#10
        j=1; k=0; reset=0;#10
       
       $finish; 
       end 
endmodule
