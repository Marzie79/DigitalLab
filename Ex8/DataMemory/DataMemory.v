module DataMemory(Clock, Address, MemRead, ReadData, MemWrite, WriteData);
	input Clock, MemWrite, MemRead;
	input [63:0] Address;
	input [63:0] WriteData;
	output [63:0] ReadData;
	reg [63:0] memory [0:1023];

	assign ReadData = memory[Address[9:0]];

	always @(posedge Clock)
		if (MemWrite == 1) memory[Address[9:0]] = WriteData;
        
endmodule