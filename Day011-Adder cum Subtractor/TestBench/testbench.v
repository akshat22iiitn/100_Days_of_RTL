`timescale 1ns / 1ps

module testbench;
reg [3:0] A,B; 
reg en;
wire [3:0] sum;
wire cbout;

adder_cum_subtractor uut(A,B,en,sum,cbout);
initial begin 
    A=4'b0001; B=4'b0000; en=1; #10
     
     A= 4'b0100; B = 4'b0111;en = 1'b0; #10 
      A= 4'b1000; B = 4'b0111;en = 1'b0; #10
       A= 4'b0110; B = 4'b1111;en = 1'b1; #10
        A= 4'b0101; B = 4'b0011;en = 1'b1; #10
         A= 4'b0000; B = 4'b0101;en = 1'b1; #10
       
    
    $finish;
    end
endmodule
