module control(Opcode, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
	input[6:0] Opcode;
	output ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch;
	output [1:0] ALUOp;
	reg [7:0] controls;

	always @(Opcode)
	begin
		casex(Opcode)
			7'b0110011: controls = 8'b00100010;  // R-Format
			7'b0000011: controls = 8'b11110000;  // ld
			7'b0100011: controls = 8'b1x001000;  // sd
			7'b1100011: controls = 8'b0x000101;  // beq
			default:    controls = 8'bxxxxxxxx;
		endcase
	end

	assign {ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp} = controls;
endmodule
