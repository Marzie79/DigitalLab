module RegisterFile(Clock, ReadReg1, ReadReg2, ReadData1, ReadData2, RegWrite, WriteReg, WriteData);
	input Clock, RegWrite;
	input [4:0] ReadReg1, ReadReg2, WriteReg;
	input [63:0] WriteData;
	output reg [63:0] ReadData1, ReadData2;
	reg [63:0] registers [0:31];

	always @(ReadReg1 | ReadReg2)
	begin
		ReadData1 = registers[ReadReg1];
		ReadData2 = registers[ReadReg2];
	end

	always @(posedge Clock)
		if (RegWrite == 1) registers[WriteReg] = WriteData;
endmodule
