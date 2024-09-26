`timescale 1ns / 1ps



module testbench;
reg clk,reset,d;
wire qsr,qt,qjk;

conversion_d dut(qsr,qt,qjk,clk,reset,d);
initial forever #5 clk=~clk;

initial 
begin 
    clk=1; 
    d=0; reset=0; #10
    d=1; reset=0; #10
    d=1; reset=0; #10
    d=0; reset=1; #10
    d=1; reset=0; #10
    d=0; reset=0; #10
    d=1; reset=0; #10
    d=1; reset=0; #10
    d=1; reset=1; #10
    d=1; reset=0; #10
    d=1; reset=1; #10
    $finish;
    end   
endmodule

