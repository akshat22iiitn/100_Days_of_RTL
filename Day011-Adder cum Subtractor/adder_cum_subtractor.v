module full_adder(input a,input b,input cin,output s,output cout);
assign s=a^b^cin;
assign cout = (a&b) | (b&cin) | (a&cin);
endmodule

module adder_cum_subtractor(A,B,en,sum,cbout);
input [3:0] A,B; 
input en;
output [3:0] sum;
output cbout;
wire [2:0] c;
 full_adder fa1(A[0],(B[0]^en),en,sum[0],c[0]);
 full_adder fa2(A[1],(B[1]^en),c[0],sum[1],c[1]);
 full_adder fa3(A[2],(B[2]^en),c[1],sum[2],c[2]);
 full_adder fa4(A[3],(B[3]^en),c[2],sum[3],cbout);
 
endmodule
