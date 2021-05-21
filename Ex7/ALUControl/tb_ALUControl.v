module tb_ALUControl();
	reg [1:0] ALUOp;
	reg [6:0] Funct7;
	reg [2:0] Funct3;
	wire [3:0] ALUctrl;

	ALUControl alu_ctrl(ALUOp, Funct7, Funct3, ALUctrl);
	
	initial begin
		ALUOp = 2'b00;
		Funct7 = 7'bxxxxxxx;
		Funct3 = 3'bxxx;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUctrl);
		ALUOp = 2'b01;
		Funct7 = 7'bxxxxxxx;
		Funct3 = 3'bxxx;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUctrl);
		ALUOp = 2'b10;
		Funct7 = 7'b0000000;
		Funct3 = 3'b000;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUctrl);
		ALUOp = 2'b10;
		Funct7 = 7'b0100000;
		Funct3 = 3'b000;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUctrl);
		ALUOp = 2'b10;
		Funct7 = 7'b0000000;
		Funct3 = 3'b111;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUctrl);
		ALUOp = 2'b10;
		Funct7 = 7'b0000000;
		Funct3 = 3'b110;
		#20 $display("ALUOp: %b, Funct7: %b, Funct3: %b\nALUctrl: %b\n", ALUOp, Funct7, Funct3, ALUctrl);
	end
endmodule