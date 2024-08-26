
// priority encoder

module priority_encoder_4_2(
input [0:3] I,
input en,
output z,
output reg [1:0] out
);

assign z=|I;

always@(I)
begin
	out =2'bx;
/*
way one
*/
	case(en)
	1:
	begin 
		casex(I)
		4'bxxx1: out=2'b11;
		4'bxx10: out=2'b10;
		4'bx100: out=2'b01;
		4'b1000: out=2'b00;
		4'b0000: out=2'bx;
		default  out=2'bx;
		endcase
	end
	0:
		out =2'bx;
	endcase

/*
way two

	if(en==1)
	begin
		if(I[0]==0&&I[1]==0&&I[2]==0&&I[3]==0)
			out=2'bxx;
		else if(I[0]==1&&I[1]==0&&I[2]==0&&I[3]==0)
			out=2'b00;
		else if(I[1]==1&&I[2]==0&&I[3]==0)
			out=2'b01;
		else if(I[2]==1&&I[3]==0)
			out=2'b10;
		else if(I[3]==1)
			out=2'b11;
		else
			out=2'bx;
	end
	else if(en==0)
		out=2'bx;
	else
		out=2'bx;
*/
end
endmodule
