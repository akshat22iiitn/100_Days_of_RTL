`timescale 1ns / 1ps
module D_latch(d,en,q,qb);
input d,en; 
output reg q,qb; 

always@(d,en)
   begin
    if(en==0)
         begin
             q=1'bX;
             qb=1'bX;
          end
     if(en==1)
        begin 
        if(d==0|| d==1)
            begin 
               q=d;
               qb=(~d);   
              end  
         end    
    end
endmodule
