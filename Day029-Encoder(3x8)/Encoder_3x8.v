`timescale 1ns / 1ps

module Encoder_3x8(d,a,b,c);
input [7:0] d;
output a,b,c;
  assign a= d[4]+d[5]+d[6]+d[7                  ];
  assign b= d[2]+d[3]+d[6]+d[7];          
assign c= d[1]+d[3]+d[5]+d[7];
endmodule
