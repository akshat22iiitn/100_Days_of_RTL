`timescale 1ns / 1ps



module SR_flipflop(s,r,clk,q,qb);
input s,r,clk;
output reg q,qb;
always@(posedge clk) 
        begin
        if(s==0&& r==0) begin
          q=1'b0;
          qb=1'b0;
          end
         if(s==0 && r==1) begin
         q=s;
         qb=(~q);
         end
         if(s==1 && r==1) begin
         q=1'bZ;
         qb=1'bZ;
         end
         if(s==1 && r==0) begin
         q=s;
         qb=r;
         end 
     end
endmodule
