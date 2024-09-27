`timescale 1ns / 1ps


module jk_flip_flop(j,k,reset,clk,q,qb);
input j,k,clk,reset;
output reg q,qb;
    always@(posedge clk) begin  
if(reset) begin 
    q=1'b0;
    qb=1'b0;
end 
else begin
if(j==0 && k==0)
  begin
    q=(q);
    qb=(~q);
  end 
if(j==1 && k==0) 
 begin
    q=j;
    qb=k;
 end 
if(j==0 && k==1) 
            begin
              q=j;
              qb=k;
            end 
  
if(j==1 && k==1) 
            begin
    q=(~q);
    qb=(~qb);
            end 
    end 
end 
endmodule
