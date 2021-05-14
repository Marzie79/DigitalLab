module tb_Mux();
	reg [63:0] Zero, One;
	reg Select;
	wire [63:0] Out;

	Mux mux(Zero, One, Select, Out);

	initial begin
		Zero = 64'b1;
		One = 64'b10;
		Select = 0;
		#20 $display("zero:\n%b\none:\n%b\nselect: %b, out:%b",Zero, One, Select, Out);
		Select = 1;
		#20 $display("zero:\n%b\none:\n%b\nselect: %b, out:%b",Zero, One, Select, Out);
	end
endmodule
