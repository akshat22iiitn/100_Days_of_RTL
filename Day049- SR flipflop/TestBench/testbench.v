`timescale 1ns / 1ps


module testbench;
reg s,r,clk;
wire q,qb;
SR_flipflop uut(s,r,clk,q,qb);
 initial begin
    clk=0;
    s=0; r=1; #10
    clk=1; s=0; r=0; 
    #10
    
 
    clk=0;
    s=1; r=0;
    #10
    clk=1; s=0;r=1; #10
    $finish;
    end
    
endmodule
