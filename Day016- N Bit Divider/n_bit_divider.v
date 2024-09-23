`timescale 1ns / 1ps



module n_bit_divider(divisor,dividend,remainder,quotient,clk);
parameter N=4;
input clk;
input [N-1:0] divisor,dividend;
output reg [N-1:0] remainder,quotient;

always@(posedge clk) 
begin 
    quotient=0;
    remainder=dividend;
    while(remainder >= divisor)
    begin 
            remainder=remainder-divisor;
            quotient=quotient+1;
     end
 end 
endmodule
