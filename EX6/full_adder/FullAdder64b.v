//simple ripple-carry Full Adder
module FullAdder64(input Cin, input [63:0] A, input [63:0] B, output [63:0] Sum, output Cout);

wire carry[64:0];
assign carry[0] = Cin;
assign Cout = carry[64];

genvar i;
generate
	for(i = 0; i < 64; i = i + 1) begin
		FullAdder fa(carry[i], A[i], B[i], Sum[i], carry[i+1]);
	end
endgenerate
endmodule

//A hierarchical carry-lookahead adder with ripple-carry between blocks
module CLAFullAdder64b(input Cin, input [63:0] A, input [63:0] B, output [63:0] Sum, output Cout);

FullAdder16b fa0(Cin, A[15:0], B[15:0], Sum[15:0], cout0);
FullAdder16b fa1(cout0, A[31:16], B[31:16], Sum[31:16], cout1);
FullAdder16b fa2(cout1, A[47:32], B[47:32], Sum[47:32], cout2);
FullAdder16b fa3(cout2, A[63:48], B[63:48], Sum[63:48], Cout);

endmodule