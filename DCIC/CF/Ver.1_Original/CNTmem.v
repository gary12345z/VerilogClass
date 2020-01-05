`timescale 1ns/10ps


module CNTmem (clk,reset,addr,state,CNT1,CNT2,CNT3,CNT4,CNT5,CNT6,sum,flag,MEMO1,MEMO2,MEMO3,MEMO4,MEMO5,MEMO6);
	
	parameter	set = 2,
				sort = 3;
	input 	clk,
			reset;
	input	[2:0]	addr;
	input	[2:0] 	state;
	input	[14:0]	CNT1,CNT2,CNT3,CNT4,CNT5,CNT6;
					
	input	[7:0] 	sum;
	input	[6:0]	flag;
	output	[14:0]	MEMO1,MEMO2,MEMO3,MEMO4,MEMO5,MEMO6;
					
					
	reg		[14:0]	MEM1[4:0];
	reg		[14:0]	MEM2[4:0];
	reg		[14:0]	MEM3[4:0];
	reg		[14:0]	MEM4[4:0];
	reg		[14:0]	MEM5[4:0];
	reg		[14:0]	MEM6[4:0];
	
	assign 	MEMO1 = MEM1[addr];
	assign 	MEMO2 = MEM2[addr];
	assign 	MEMO3 = MEM3[addr];
	assign 	MEMO4 = MEM4[addr];
	assign 	MEMO5 = MEM5[addr];
	assign 	MEMO6 = MEM6[addr];
	
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			MEM1[0] <= 0;
			MEM1[1] <= 0;
			MEM1[2] <= 0;
			MEM1[3] <= 0;
			MEM1[4] <= 0;
			MEM1[5] <= 0;
			
			MEM2[0] <= 0;
			MEM2[1] <= 0;
			MEM2[2] <= 0;
			MEM2[3] <= 0;
			MEM2[4] <= 0;
			MEM2[5] <= 0;
			
			MEM3[0] <= 0;
			MEM3[1] <= 0;
			MEM3[2] <= 0;
			MEM3[3] <= 0;
			MEM3[4] <= 0;
			MEM3[5] <= 0;
			
			MEM4[0] <= 0;
			MEM4[1] <= 0;
			MEM4[2] <= 0;
			MEM4[3] <= 0;
			MEM4[4] <= 0;
			MEM4[5] <= 0;
			
			MEM5[0] <= 0;
			MEM5[1] <= 0;
			MEM5[2] <= 0;
			MEM5[3] <= 0;
			MEM5[4] <= 0;
			MEM5[5] <= 0;
			
			MEM6[0] <= 0;
			MEM6[1] <= 0;
			MEM6[2] <= 0;
			MEM6[3] <= 0;
			MEM6[4] <= 0;
			MEM6[5] <= 0;
		end
		else
		begin
			if(state == set)
			begin
				MEM1[0] <= CNT1;
				MEM1[1] <= CNT1;
				MEM1[2] <= CNT1;
				MEM1[3] <= CNT1;
				MEM1[4] <= CNT1;

				
				MEM2[0] <= CNT2;
				MEM2[1] <= CNT2;
				MEM2[2] <= CNT2;
				MEM2[3] <= CNT2;
				MEM2[4] <= CNT2;

				
				MEM3[0] <= CNT3;
				MEM3[1] <= CNT3;
				MEM3[2] <= CNT3;
				MEM3[3] <= CNT3;
				MEM3[4] <= CNT3;

				
				MEM4[0] <= CNT4;
				MEM4[1] <= CNT4;
				MEM4[2] <= CNT4;
				MEM4[3] <= CNT4;
				MEM4[4] <= CNT4;

				
				MEM5[0] <= CNT5;
				MEM5[1] <= CNT5;
				MEM5[2] <= CNT5;
				MEM5[3] <= CNT5;
				MEM5[4] <= CNT5;

				MEM6[0] <= CNT6;
				MEM6[1] <= CNT6;
				MEM6[2] <= CNT6;
				MEM6[3] <= CNT6;
				MEM6[4] <= CNT6;
			end
			else if (state == sort)
			begin
				if(flag[5])
				begin
					case(addr)
					0 :	begin
						MEM1[1] <= {sum,flag};
						MEM1[2] <= {sum,flag};
						MEM1[3] <= {sum,flag};
						MEM1[4] <= {sum,flag};
						end
					1 : begin
						MEM1[2] <= {sum,flag};
						MEM1[3] <= {sum,flag};
						MEM1[4] <= {sum,flag};
						end
					2 : begin
						MEM1[3] <= {sum,flag};
						MEM1[4] <= {sum,flag};
						end
					3 : begin
						MEM1[4] <= {sum,flag};
						end
					endcase
				end
				if(flag[4])
				begin
					case(addr)
					0 :	begin
						MEM2[1] <= {sum,flag};
						MEM2[2] <= {sum,flag};
						MEM2[3] <= {sum,flag};
						MEM2[4] <= {sum,flag};
						end
					1 : begin
						MEM2[2] <= {sum,flag};
						MEM2[3] <= {sum,flag};
						MEM2[4] <= {sum,flag};
						end
					2 : begin
						MEM2[3] <= {sum,flag};
						MEM2[4] <= {sum,flag};
						end
					3 : begin
						MEM2[4] <= {sum,flag};
						end
					endcase
				end
				if(flag[3])
				begin
					case(addr)
					0 :	begin
						MEM3[1] <= {sum,flag};
						MEM3[2] <= {sum,flag};
						MEM3[3] <= {sum,flag};
						MEM3[4] <= {sum,flag};
						end
					1 : begin
						MEM3[2] <= {sum,flag};
						MEM3[3] <= {sum,flag};
						MEM3[4] <= {sum,flag};
						end
					2 : begin
						MEM3[3] <= {sum,flag};
						MEM3[4] <= {sum,flag};
						end
					3 : begin
						MEM3[4] <= {sum,flag};
						end
					endcase
				end
				if(flag[2])
				begin
					case(addr)
					0 :	begin
						MEM4[1] <= {sum,flag};
						MEM4[2] <= {sum,flag};
						MEM4[3] <= {sum,flag};
						MEM4[4] <= {sum,flag};
						end
					1 : begin
						MEM4[2] <= {sum,flag};
						MEM4[3] <= {sum,flag};
						MEM4[4] <= {sum,flag};
						end
					2 : begin
						MEM4[3] <= {sum,flag};
						MEM4[4] <= {sum,flag};
						end
					3 : begin
						MEM4[4] <= {sum,flag};
						end
					endcase
				end
				if(flag[1])
				begin
					case(addr)
					0 :	begin
						MEM5[1] <= {sum,flag};
						MEM5[2] <= {sum,flag};
						MEM5[3] <= {sum,flag};
						MEM5[4] <= {sum,flag};
						end
					1 : begin
						MEM5[2] <= {sum,flag};
						MEM5[3] <= {sum,flag};
						MEM5[4] <= {sum,flag};
						end
					2 : begin
						MEM5[3] <= {sum,flag};
						MEM5[4] <= {sum,flag};
						end
					3 : begin
						MEM5[4] <= {sum,flag};
						end
					endcase
				end
				if(flag[0])
				begin
					case(addr)
					0 :	begin
						MEM6[1] <= {sum,flag};
						MEM6[2] <= {sum,flag};
						MEM6[3] <= {sum,flag};
						MEM6[4] <= {sum,flag};
						end
					1 : begin
						MEM6[2] <= {sum,flag};
						MEM6[3] <= {sum,flag};
						MEM6[4] <= {sum,flag};
						end
					2 : begin
						MEM6[3] <= {sum,flag};
						MEM6[4] <= {sum,flag};
						end
					3 : begin
						MEM6[4] <= {sum,flag};
						end
					endcase
				end
			end
		end
	end
endmodule