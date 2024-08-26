
// 4:2 encoder with enable
module encoder_4_2(
input [0:3] I,
input en,
output reg [1:0] out
);

always @(I,en)
begin
	out =2'bx;
/*
way one
	case(en)
	1:
	begin 
		case(I)
		4'b1000: out=2'b00;
		4'b0100: out=2'b01;
		4'b0010: out=2'b10;
		4'b0001: out=2'b11;
		default out=2'bx;
		endcase
	end
	0:
		out =2'bx;
	endcase
*/
/*
way two
*/
	if(en==1)
	begin
		if(I==4'b1000)
			out=2'b00;
		else if(I==4'b0100)
			out=2'b01;
		else if(I==4'b0010)
			out=2'b10;
		else if(I==4'b0001)
			out=2'b11;
		else
			out=2'bx;
	end
	else if(en==0)
		out=2'bx;
	else
		out=2'bx;
end
endmodule