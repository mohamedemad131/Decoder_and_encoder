
// geeric encoder 

module generic_priority_encoder
#(parameter n=4)
(
input [0:n-1] I,
input en,
output z,
output reg [$clog2(n)-1:0] out
);
integer k; 
assign z=|I;
always @(I,en)
begin 
	out='bx;
	if(en==1)
	begin
		for(k=0;k<n;k=k+1)
			if(I[k])
				out=k;
	end
	else if(en==0)
		out='bx;
	else
		out='bx;
end
endmodule
