`timescale 1ns / 1ps

module Mux_2x1(s,a,b,o     );
input s,a,b;
output o;
reg o;
  always@(s,a,b)begin
if(s==0)begin
o=a;
end
if(s==1) begin
o=b;
end
end
endmodule
