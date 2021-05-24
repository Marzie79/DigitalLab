module InstructionMemory(Address, Instruction);
	input [63:0] Address;
	output [31:0] Instruction;
	reg [31:0] memory[0:1023];

	assign Instruction = memory[Address[10:0]];
endmodule