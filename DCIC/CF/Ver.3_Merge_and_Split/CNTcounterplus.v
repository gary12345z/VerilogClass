`timescale 1ns/10ps

module CNTcounter (
// Special Signal
clk, 
reset, 
// State
state, 
// INPUT
gray_data, 
// next {CNT, flag} from PE
CNT1_n,
CNT2_n,
CNT3_n,
CNT4_n,
// for CNT6 when state = 'pe'
sum,
flag, 
// {CNT, flag} to PE
CNT1, 
CNT2, 
CNT3, 
CNT4, 
CNT5,
CNT6
);
	input 	clk;
	input 	reset;
	input 	[2:0]	state;
	input	[7:0] 	gray_data, sum;
	input	[6:0]	flag;
	input 	[14:0] 	CNT1_n, CNT2_n, CNT3_n, CNT4_n;
	output 	[14:0] 	CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
	
	reg 	[7:0] 	gray_data_g;
	wire 	[5:0] 	enable;

	function [5:0] encoding;
		input [7:0] code;
		begin
			case(code)
			1: encoding = 6'b000001;
			2: encoding = 6'b000010;
			3: encoding = 6'b000100;
			4: encoding = 6'b001000;
			5: encoding = 6'b010000;
			6: encoding = 6'b100000;
			default : encoding = 6'b000000;
			endcase
		end
	endfunction
	
	assign enable = encoding(gray_data_g);
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			gray_data_g <= 0;
		end
		else
		begin
			gray_data_g <= gray_data;
		end
	end
	
	`define INFINITY 15'b111_1111_1000_0000
	CNTCell CNT_6(
		.clk(clk), .reset(reset), .enable(enable[5]), .state(state),
		.reg_init	({8'd0,7'b1000001}),
		.CNT_n		({sum,flag}),
		.CNT		(CNT6)
	);
	CNTCell CNT_5(
		.clk(clk), .reset(reset), .enable(enable[4]), .state(state),
		.reg_init	({8'd0,7'b1000010}),
		.CNT_n		(`INFINITY),
		.CNT		(CNT5)
	);
	CNTCell CNT_4(
		.clk(clk), .reset(reset), .enable(enable[3]), .state(state),
		.reg_init	({8'd0,7'b1000100}),
		.CNT_n		(CNT4_n),
		.CNT		(CNT4)
	);
	CNTCell CNT_3(
		.clk(clk), .reset(reset), .enable(enable[2]), .state(state),
		.reg_init	({8'd0,7'b1001000}),
		.CNT_n		(CNT3_n),
		.CNT		(CNT3)
	);
	CNTCell CNT_2(
		.clk(clk), .reset(reset), .enable(enable[1]), .state(state),
		.reg_init	({8'd0,7'b1010000}),
		.CNT_n		(CNT2_n),
		.CNT		(CNT2)
	);
	CNTCell CNT_1(
		.clk(clk), .reset(reset), .enable(enable[0]), .state(state),
		.reg_init	({8'd0,7'b1100000}),
		.CNT_n		(CNT1_n),
		.CNT		(CNT1)
	);
endmodule

module CNTCell(
clk,
reset,
enable,
state,
reg_init,
CNT_n,
CNT
);
	input 	clk;
	input 	reset;
	input	enable;
	input 	[2:0]	state;
	input 	[14:0] 	reg_init;
	input 	[14:0] 	CNT_n;
	output 	[14:0] 	CNT;
	reg 	[14:0] 	CNT;
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset) 												CNT 		<= reg_init;
		else
			if(state == `CODEV) 								CNT 		<= {8'd0,7'b1000001};
			else if(state == `COUNT && enable) 					CNT[14:7] 	<= CNT[14:7] + 8'd1;
			else if(state == `SORT || state == `SORT_DECODE)	CNT 		<= CNT_n;
	end
endmodule
