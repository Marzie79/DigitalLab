module ALU(A, B, ALUControl, C, Zero);
	input  [63:0] A, B;
	input  [3:0] ALUControl;
	output reg [63:0] C;
	output reg Zero;

	always @(ALUControl | A | B)
	begin
		casex (ALUControl)
			4'b0000: C = (A & B);
			4'b0001: C = (A | B);
			4'b0010: C = (A + B);
			4'b0110: C = (A - B);
			default: C = 64'bx; //invalid input
		endcase
		if (C == 0) assign Zero = 1;
		else assign Zero = 0;
	end
endmodule
