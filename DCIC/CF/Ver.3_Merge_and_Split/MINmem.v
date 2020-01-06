 `timescale 1ns/10ps


module MINmem (
clk,
reset,
addr,
state,
mini2,
mini1,
MINO2,
MINO1
);
	input 	clk,
			reset;
	input	[2:0]	addr;
	input	[2:0] 	state;
	input	[5:0]	mini1,mini2;
	output	[5:0]	MINO1,MINO2;
						
	reg		[5:0]  	MINO1;
	reg		[5:0]  	MINO2;
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			MINO1 <= 0;
			MINO2 <= 0;
		end
		else
		begin
			if (state == `SORT || state == `SORT_DECODE)
			begin
				MINO1 <= mini1;
				MINO2 <= mini2;
			end
		end
	end
endmodule