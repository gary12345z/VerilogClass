`timescale 1ns/10ps


module MINmem (clk,reset,addr,state,mini2,mini1,MINO2,MINO1);
	
	parameter	set = 2,
				sort = 3;
	input 	clk,
			reset;
	input	[2:0]	addr;
	input	[2:0] 	state;
	input	[14:0]	mini1,mini2;
	output	[14:0]	MINO1,MINO2;
					
					
	reg		[14:0]  MIN1[4:0];
	reg		[14:0]	MIN2[4:0];
	

	assign	MINO1 = MIN1[addr];
	assign	MINO2 = MIN2[addr];
	
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			MIN1[0] <= 0;
			MIN1[1] <= 0;
			MIN1[2] <= 0;
			MIN1[3] <= 0;
			MIN1[4] <= 0;
			
			MIN2[0] <= 0;
			MIN2[1] <= 0;
			MIN2[2] <= 0;
			MIN2[3] <= 0;
			MIN2[4] <= 0;
		end
		else
		begin
			if (state == sort)
			begin
				MIN1[addr] <= mini1;
				MIN2[addr] <= mini2;
			end
		end
	end
endmodule