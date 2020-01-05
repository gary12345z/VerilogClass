`timescale 1ns/10ps


module encodemem (clk,reset,state,HC1_n,HC2_n,HC3_n,HC4_n,HC5_n,HC6_n,M1_n,M2_n,M3_n,M4_n,M5_n,M6_n, HC1, HC2, HC3, HC4, HC5, HC6,M1,M2,M3,M4,M5,M6);
	
	parameter	decode = 3'd4,
				codev = 3'd5;
	input 	clk,
			reset;
	input	[2:0] 	state;
	input 	[7:0]	HC1_n,HC2_n,HC3_n,HC4_n,HC5_n,HC6_n;
	input 	[7:0]	M1_n,M2_n,M3_n,M4_n,M5_n,M6_n;
	output 	[7:0] 	HC1, HC2, HC3, HC4, HC5, HC6;
	output 	[7:0] 	M1, M2, M3, M4, M5, M6;
	reg 	[7:0]	HC1,HC2,HC3,HC4,HC5,HC6;
	reg 	[7:0]	M1,M2,M3,M4,M5,M6;	

	
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			HC1<=8'b00000000;
			HC2<=8'b00000000;
			HC3<=8'b00000000;
			HC4<=8'b00000000;
			HC5<=8'b00000000;
			HC6<=8'b00000000;
			M1<=8'b00000000;
			M2<=8'b00000000;
			M3<=8'b00000000;
			M4<=8'b00000000;
			M5<=8'b00000000;
			M6<=8'b00000000;
		end
		else
		begin
			if(state == decode)
			begin
				HC1	<=	HC1_n;
				HC2	<=	HC2_n;
				HC3	<=	HC3_n;
				HC4	<=	HC4_n;
				HC5	<=	HC5_n;
				HC6	<=	HC6_n;
				M1	<=	M1_n;
				M2	<=	M2_n;
				M3	<=	M3_n;
				M4	<=	M4_n;
				M5	<=	M5_n;
				M6	<=	M6_n;
			end
			else if (state == codev)
			begin
				HC1	<=	8'b00000000;
				HC2	<=	8'b00000000;
				HC3	<=	8'b00000000;
				HC4	<=	8'b00000000;
				HC5	<=	8'b00000000;
				HC6	<=	8'b00000000;
				M1	<=	8'b00000000;
				M2	<=	8'b00000000;
				M3	<=	8'b00000000;
				M4	<=	8'b00000000;
				M5	<=	8'b00000000;
				M6	<=	8'b00000000;
			end
		end
	end
endmodule