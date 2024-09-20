
module Binary2BCD(b,B);
input [3:0] b;
output [4:0] B;

assign B[4] = ((b[1]|b[2])&b[3]);
assign B[3] = ((~b[1])&(~b[2])&(b[3]));
assign B[2] = (((b[1])|(~b[3]))&b[2]);
assign B[1] = (((b[1])&(~b[3]))|((~b[1])&(b[2])&(b[3])));
assign B[0] = b[0];

endmodule
