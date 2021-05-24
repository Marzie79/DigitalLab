module tb_DataMemory();
	reg MemWrite, MemRead;
	reg [4:0] Address;
	reg [63:0] WriteData;
	wire [63:0] ReadData;
	wire Clock;

	clock_generator clk(Clock);
	DataMemory data_mem(Clock, Address, MemRead, ReadData, MemWrite, WriteData);

	initial begin
		WriteData = 64'b001101001;
		MemWrite = 1;
		MemRead = 0;
		Address = 00101;
		#20 $display("Writing 105 in [1]... %b", WriteData);
		#20 $display("Writing 105 in [1]...");
		MemWrite = 0;
		MemRead = 1;
		Address = 00101;
		#20 $display("Reading data from [1]:\n%b\n", ReadData);
		#20 $display("Reading data from [1]:\n%d\n", ReadData);
		#20 $display("Reading data from [1]:\n%d\n", ReadData);
	end

endmodule
