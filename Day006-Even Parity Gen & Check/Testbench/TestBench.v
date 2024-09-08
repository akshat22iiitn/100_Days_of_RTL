`timescale 1ns / 1ps


module TestBench;
reg [2:0]b;
wire p;
Even_Parity uut(b,p);
initial begin
b[2]=0;b[1]=0;b[0]=0;#10
b[2]=0;b[1]=0;b[0]=1;#10
b[2]=0;b[1]=1;b[0]=0;#10
b[2]=0;b[1]=1;b[0]=1;#10
b[2]=1;b[1]=0;b[0]=0;#10
b[2]=1;b[1]=0;b[0]=1;#10
b[2]=1;b[1]=1;b[0]=0;#10
b[2]=1;b[1]=1;b[0]=1;#10
$finish;
end 
endmodule
