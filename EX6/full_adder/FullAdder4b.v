//4 bits carry-lookahead adder
module FullAdder4b(input Cin, input [3:0] A, input [3:0] B, output [3:0] Sum, output Cout);

wire [3:0] p, g;
wire [4:0] c;
assign c[0] = Cin;
assign Cout = c[4];

genvar i;
generate for(i = 0; i < 4; i = i + 1) begin
	assign p[i] = A[i] ^ B[i];
	assign g[i] = A[i] & B[i];
	FullAdder fa(c[i], A[i], B[i], Sum[i], );
end
endgenerate

assign c[1] = g[0] | (p[0] & Cin);
assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & Cin);
assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & Cin);
assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & Cin);


endmodule
