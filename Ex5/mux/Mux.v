module Mux(first, second, select, out);

	parameter n=64;
	input [n-1:0] first, second;
	input select;
	output [n-1:0] out;
	assign out = (select == 0) ? first : second;

endmodule