module tb_InstructionMemory();
	reg [63:0] Address;
	wire [31:0] Instruction;
	
	InstructionMemory inst_mem(Address, Instruction);
	initial begin
		Address = 10'b0001;
		#20 $display("first instruction:\n%b\n", Instruction);
		Address = 10'b0010;
		#20 $display("second instruction:\n%b\n", Instruction);
		Address = 10'b0011;
		#20 $display("third instruction:\n%b\n", Instruction);
	end
endmodule