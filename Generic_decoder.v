
// generic decoder with enable

module generic_decoder
#(parameter n=2)
(
input [n-1:0] s,
input en,
output reg [0:(2**n) -1] out
);

always @(s,en)
begin
	out='b0;  // dont warry zero expanded
	if(en==1)
		out[s]=1'b1;
	else if(en==0)
		out='b0; 
	else
		out='bx; 
	
end

endmodule