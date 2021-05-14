module FullAdder(input wire Cin, input wire A, input wire B, output Sum, output Cout);

assign Sum = Cin ^ A ^ B;
assign Cout = A&B | A&Cin | B&Cin;

endmodule