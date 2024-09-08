`timescale 1ns / 1ps

module testbench;
reg d,en; 
wire q,qb;
 D_latch uut(d,en,q,qb);
 initial 
    begin 
  d=0; en=0; #10
   d=0; en=1; #10
    d=1; en=0; #10
     d=1; en=1; #10
  $finish;
    end 
endmodule

