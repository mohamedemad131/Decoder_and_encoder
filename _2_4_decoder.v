
// 2:4 decoder with enable

module decoder_2_4(
input [1:0]s,
input en,
output reg [0:3] out
);

always @(s,en)
begin
	out=4'b0000;
/*
way one 

	case(en)
	1:
	begin
		case(s)
		2'b00: out=4'b1000;
		2'b01: out=4'b0100;
		2'b10: out=4'b0010;
		2'b11: out=4'b0001;
		default out=4'bx;
		endcase
	end
	0:
	out=4'b0000;
	endcase
*/
/*
way two
*/
if(en==1)
begin 
	if(s==2'b00)
		out=4'b1000;
	else if(s==2'b01)
		out=4'b0100;
	else if(s==2'b10)
		out=4'b0010;
	else if(s==2'b11)
		out=4'b0001;
	else
		out=4'bx;
end
else if (en==0)
	out=4'b0000;
else
out=4'bx;

/*
way three
out[s]=1'b1;
*/
end
endmodule