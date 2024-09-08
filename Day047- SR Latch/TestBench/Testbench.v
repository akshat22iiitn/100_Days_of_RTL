`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 15:36:52
// Design Name: 
// Module Name: TestBench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TestBench();
reg S,R,EN;
wire Q,Qb;

SR_latch uut(S,R,EN,Q,Qb);
initial
    begin
    EN=0; S=0; R=0; #10
    EN=0; S=0; R=1; #10
    EN=0; S=1; R=0; #10
    EN=0; S=1; R=1; #10
    EN=1; S=0; R=0; #10
    EN=1; S=0; R=1; #10
    EN=1; S=1; R=0; #10
    EN=1; S=1; R=1; #10
    $finish;
    end

endmodule
