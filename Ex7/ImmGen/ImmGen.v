module ImmGen(in, out);
	input [31:0] in;
	output reg [63:0] out;

	always @(in)
		casex(in[6:0])
			7'b0010011: out = { {53{in[31]}}, in[30:20]}; //I-type
			7'b0000011: out = { {53{in[31]}}, in[30:20]}; //I-type
			7'b0100011: out = { {53{in[31]}}, in[30:25], in[11:7]}; //S-type
			7'b1100111: out = { {52{in[31]}}, in[7], in[30:25], in[11:8], 0}; //SB-type
			default: out = 64'bx;
		endcase
endmodule