`timescale 1ns / 1ps
parameter n=4;
module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout = (a&b) | (b&cin) | (a&cin);
endmodule

module parallel_adder(input [n-1:0] A,input [n-1:0] B,input carry_in,output [n-1:0] sum,output carry);
wire [2:0] c;

full_adder u1(A[0],B[0],carry_in,sum[0],c[0]);
full_adder u2(A[1],B[1],c[0],sum[0],c[1]);
full_adder u3(A[2],B[2],c[1],sum[0],c[2]);
full_adder u4(A[3],B[3],c[2],sum[0],carry);
endmodule
