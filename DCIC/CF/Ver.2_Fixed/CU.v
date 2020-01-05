`timescale 1ns/10ps 

module CU (clk,reset,gray_valid,CNT_valid,code_valid,state,counter);

//=============================================input,output===========================================//

	input 	clk;
	input 	reset;
	input 	gray_valid;
	output 	CNT_valid;
	output 	code_valid;
	output 	[2:0]	state, counter;
//===============================================reg==============================================//
	reg 	[2:0]	state;
	reg 	[2:0]	state_n;
	reg 	[2:0]	counter;
	reg		[2:0] 	counter_n;
	reg 	CNT_valid;
	reg 	CNT_valid_n;
	reg 	code_valid;
	reg	 	code_valid_n;

//=============================================seq================================================//

	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			state <= `IDLE;
			counter	<= 1;
			CNT_valid <= 0;
			code_valid <= 0;
		end
		else
		begin
			counter	<= counter_n;
			state <= state_n;
			CNT_valid<=CNT_valid_n;
			code_valid<=code_valid_n;
		end
	end
	
//=============================================comb==============================================//

	always @ (*)
	begin
		case(state)
		`IDLE  	:begin
					state_n = (gray_valid)? `COUNT : `IDLE;
					CNT_valid_n = 0;
					code_valid_n = 0;
					counter_n = 0;
				end
		`COUNT 	:begin
					state_n 	= (gray_valid)? `COUNT : `CNTV;
					CNT_valid_n = (gray_valid)? 0 : 1;
					code_valid_n = 0;
					counter_n = 0;
				end
		`CNTV	:begin
					state_n = `SORT;
					counter_n = 0;
					CNT_valid_n = 0;
					code_valid_n = 0;
				end
		`SORT	:begin
					state_n = (counter == 4)? `DECODE : `SORT;
					counter_n = (counter == 4)? counter  : counter + 1;
					CNT_valid_n = 0;
					code_valid_n = 0;
				end
		`DECODE	:begin
					state_n = (counter == 0)? `CODEV : `DECODE;
					counter_n = (counter == 0)? 0 : counter - 1;
					CNT_valid_n = 0;
					code_valid_n = (counter == 0)? 1 : 0;
				end
		`CODEV	:begin
					state_n = `IDLE;
					counter_n = 0;
					CNT_valid_n = 0;
					code_valid_n = 0;
				end
		default	:begin
					state_n = `IDLE;
					counter_n = 0;
					CNT_valid_n = 0;
					code_valid_n = 0;
				end
		endcase
	end

	endmodule