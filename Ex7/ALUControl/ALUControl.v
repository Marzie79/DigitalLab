module ALUControl(ALUOp, Funct7, Funct3, ALUctrl);
	input [1:0] ALUOp;
	input [6:0] Funct7;
	input [2:0] Funct3;
	output reg [3:0] ALUctrl;

	always @(ALUOp or Funct7 or Funct3)
	casex(ALUOp)
		2'b00: ALUctrl <= 4'b0010; //add
 		2'b01: ALUctrl <= 4'b0110; //sub
		2'b10: begin //R-type
			casex({Funct7, Funct3})
				10'b0000000000: ALUctrl <= 4'b0010; //add
				10'b0100000000: ALUctrl <= 4'b0110; //subtract
				10'b0000000111: ALUctrl <= 4'b0000; //AND
				10'b0000000110: ALUctrl <= 4'b0001; //OR
				default: ALUctrl <= 4'bxxxx;
			endcase
		end
		default: ALUctrl <= 4'bxxxx;
	endcase
endmodule