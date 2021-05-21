module tb_RegFile();
	reg RegWrite;
	reg [4:0] ReadReg1, ReadReg2, WriteReg;
	reg [63:0] WriteData;
	wire [63:0] ReadData1, ReadData2;
	wire Clock;

	clock_generator clk(Clock);
	RegisterFile reg_file(Clock, ReadReg1, ReadReg2, ReadData1, ReadData2, RegWrite, WriteReg, WriteData);

	initial begin
		RegWrite = 1;
		WriteReg = 00101;
		WriteData = 64'b001101001;
		#20 $display("Writing 105 in register x5...");
		RegWrite = 0;
		ReadReg1 = 00101;
		#20 $display("Reading data from x5: %d\n", ReadData1);
	end

endmodule
