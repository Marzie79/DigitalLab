module tb_RAM();
	reg [6:0] adr;
	wire [63:0] data;
	RAM ram(adr, data);
	initial
	begin
		adr = 2;
		#10 $display("Address: %d value: %d", adr, data);
		adr = 111;
		#10 $display("Address: %d value: %d", adr, data);
		adr = 53;
		#10 $display("Address: %d value: %d", adr, data);
		adr = 21;
		#10 $display("Address: %d value: %d", adr, data);
		adr = 7;
		#10 $display("Address: %d value: %d", adr, data);
		adr = 65;
		#10 $display("Address: %d value: %d", adr, data);
		adr = 36;
		#10 $display("Address: %d value: %d", adr, data);
		
	end

endmodule
