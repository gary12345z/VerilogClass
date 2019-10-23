module and4_alg(y_out, x_in);
input [3:0] x_in;
output y_out;
reg y_out;
integer k;

always@(x_in)
begin: and_loop
	y_out = 1;
	for(k=0;k<=3;k=k+1)
		if(x_in[k]==0)
		begin
			y_out = 0;
			disable and_loop;
		end
end
endmodule

