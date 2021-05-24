module ShiftRegister(Enable, Reset, Load, Input, Dir, LeftInput, RightInput, Clock, Q);
parameter n = 4;
input Enable, Reset, Load, Dir, LeftInput, RightInput, Clock;
input [n-1:0] Input;
output wire [n-1:0] Q;
reg [n-1:0] In;

genvar i;
generate
	for(i=0; i < n; i=i+1)
		DFlipFlop dff(.D(In[i]), .Clock(Clock), .Q(Q[i]));
endgenerate

always @(posedge Clock or posedge Reset)
begin
	if(Reset)
		In = 0;
	else if (Load)
		In = Input;
	else if (Enable) //Dir=1 Shift left
	begin
		if (Dir)
			In = {Q[n-2:0], RightInput};
		else
			In = {LeftInput, Q[n-1:1]};
	end
end
endmodule
