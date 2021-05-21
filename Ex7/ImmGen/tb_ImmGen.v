module tb_ImmGen();
	reg [31:0] in;
	wire [63:0] out;

	ImmGen imm_gen(in, out);
	
	initial begin
		//addi x5 x6 -2 imm:111111111110 rs1:00110 funct3:000 rd:00101 opcode:0010011
		in = 32'b11111111111000110000001010010011;
		#20 $display("in: %b\nout: %b\n", in, out);
		//sd x5 x6(8) imm:0000000 rs2:00110 rs1:00101 funct3:111 imm:00100 opcode:0100011
		in = 32'b00000000011000101111001000100011;
		#20 $display("in: %b\nout: %b\n", in, out);
		//beq x5 x6(8) imm:0000000 rs2:00110 rs1:00101 funct3:000 imm:00100 opcode:1100111
		in = 32'b00000000011000101000001000100011;
		#20 $display("in: %b\nout: %b\n", in, out);
	end
endmodule