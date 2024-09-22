`timescale 1ns / 1ps

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
