module tb_ALU();
	reg [63:0] A, B;
	reg [3:0] ALUControl;
	wire [63:0] C;
	wire Zero;

	ALU alu(A, B, ALUControl, C, Zero);
	
	initial begin
		A = 64'b0100011101011011;
		B = 64'b1000100011010110;
		ALUControl = 4'b0000;
		#20 $display("A: %d, B: %d, operation: AND\nResult: %d\n", A, B, C);
		A = 64'b01001101011011;
		B = 64'b10001000110110;
		ALUControl = 4'b0001;
		#20 $display("A: %d, B: %d, operation: OR\nResult: %d\n", A, B, C);
		A = 64'b11101011011;
		B = 64'b10001111010;
		ALUControl = 4'b0010;
		#20 $display("A: %d, B: %d, operation: sum\nResult: %d\n", A, B, C);
		A = 64'b1000100011010110;
		B = 64'b0100011101011011;
		ALUControl = 4'b0110;
		#20 $display("A: %d, B: %d, operation: subtract\nResult: %d\n", A, B, C);
	end
endmodule