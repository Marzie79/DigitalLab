module FullAdder16b(input Cin, input [15:0] A, input [15:0] B, output [15:0] Sum, output Cout);

FullAdder4b fa0(Cin, A[3:0], B[3:0], Sum[3:0], cout0);
FullAdder4b fa1(cout0, A[7:4], B[7:4], Sum[7:4], cout1);
FullAdder4b fa2(cout1, A[11:8], B[11:8], Sum[11:8], cout2);
FullAdder4b fa3(cout2, A[15:12], B[15:12], Sum[15:12], Cout);

endmodule
