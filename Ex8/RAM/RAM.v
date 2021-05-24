module RAM(address, data);
	input wire [6:0] address;
	output wire [63:0] data;
	reg [63:0] memory [0:127];
	assign data = memory[address];
	integer i;
	initial begin
		for (i = 0; i < 128; i = i + 1)
			memory[i] = {32'b0, i};
	end
endmodule
