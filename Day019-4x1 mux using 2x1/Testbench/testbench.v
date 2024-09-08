`timescale 1ns / 1ps

module testbench;
reg [3:0] A;
reg [1:0] S; 
wire Y;
mux_4x1 uut(A,S,Y);
initial begin 
A[0]=1; A[1]=0; A[2]=1; A[3]=1; S[0]=0; S[1]=1; #10
A[0]=1; A[1]=1; A[2]=0; A[3]=1; S[0]=0; S[1]=0; #10
A[0]=0; A[1]=0; A[2]=1; A[3]=1; S[0]=1; S[1]=1; #10
A[0]=0; A[1]=1; A[2]=1; A[3]=0; S[0]=1; S[1]=0; #10
A[0]=1; A[1]=0; A[2]=1; A[3]=0; S[0]=0; S[1]=1; #10
A[0]=1; A[1]=1; A[2]=0; A[3]=1; S[0]=0; S[1]=1; #10
$finish;
end 
endmodule
