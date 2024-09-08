`timescale 1ns / 1ps

module binary_to_gray(a,g);
input [3:0] a;
output [3:0] g;
    assign g[3]=a[3];
    assign g[2]=a[3]^a[2];
    assign g[1]=a[2]^a[1];
    assign g[0]=a[1]^a[0];
endmodule
