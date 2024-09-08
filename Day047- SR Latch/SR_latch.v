`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 15:35:46
// Design Name: 
// Module Name: SR_latch
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


module SR_latch(s,r,en,q,qb);
input s,r,en;
output q,qb;
reg q,qb;

always @(en,s,r)
    begin
        if(en)
            begin
                if(s==0 && r==0)
                    begin
                    q=1'bx;
                    qb=1'bx;
                    end
                else if(s==0 && r==1)
                    begin
                    q=0;
                    qb=1;
                    end
                else if(s==1 && r==0)
                    begin
                    q=1;
                    qb=0;
                    end
                else
                    begin
                    q=1'bz;
                    qb=1'bz;
                    end        
            end
        else
            begin
            q=1'bx; qb=1'bx;
            $display("Latch is off/inactive.");
            end
    end

endmodule
