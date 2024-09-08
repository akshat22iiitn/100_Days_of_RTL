`timescale 1ns / 1ps

module mux_2x1(s,i0,i1,y);
input s,i0,i1;
output y;
reg y;
always@(s,i0,i1)
begin
if(s==0)
    begin
     y=i0;
    end
if(s==1)
    begin
     y=i1;
    end
end
endmodule

module mux_4x1(input [3:0] A,input [1:0] S,output Y);
wire [1:0] t; 
mux_2x1 u1(S[0],A[0],A[1],t[0]);
mux_2x1 u2(S[0],A[2],A[3],t[1]);
mux_2x1 u3(S[1],t[0],t[1],Y);
endmodule
