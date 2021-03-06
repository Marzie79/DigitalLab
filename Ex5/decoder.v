module decoder(u0,u1,u2,u3,e,h0,h1);
input  e,h0,h1;
output u0,u1,u2,u3;
assign u3 = (e & h1 & h0);
assign u0 = (e & ~h1 & ~h0);
assign u2 = (e & h1 & ~h0);
assign u1 = (e & !h1 &h0);
endmodule

module TB();
reg e,h0,h1;
wire u0,u1,u2,u3;

decoder d1(u0,u1,u2,u3,e,h0,h1);

initial
begin
	e=0;h0=1;h1=0;
	#100;
	e=1;h0=0;h1=0;//u0=1;
	#100;
	e=1;h0=1;h1=0;//u1=1;
	#100;
	e=1;h0=1;h1=1;//u3=1;
end
endmodule
