`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 19:52:13
// Design Name: 
// Module Name: N_bit_comparator
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


module N_bit_comparator(a,b,lesser,greater,equal);
parameter N=8;
input [N-1:0] a,b;
output lesser,greater,equal;
reg lesser=0,greater=0,equal=0;
always@(*)begin
        if(a>b) 
            begin
                lesser=1'b0;
                equal=1'b0;
                greater=1'b1;
         end 
         
         else if(a==b)
             begin
                lesser=1'b0;
                equal=1'b1;
                greater=1'b0;
              end  
         
         else
           begin
                lesser=1'b1;
                equal=1'b0;
                greater=1'b0;
         end 
     end          
endmodule
