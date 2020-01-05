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
	parameter	count 	= 1,	
				pe 		= 3,
				finish 	= 5;
	input 	clk;
	input 	reset;
	input 	[2:0]	state;
	input	[7:0] 	gray_data, sum;
	input	[6:0]	flag;
	input 	[14:0] 	CNT1_n, CNT2_n, CNT3_n, CNT4_n;
	output 	[14:0] 	CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
	
	//reg 	CNT_valid;
	//reg 	[14:0] 	CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
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
	CNTCell #(.INITIAL({8'd0,7'b1000001}), .count(count), .pe(pe), .finish(finish)) CNT_6(
		.clk(clk), .reset(reset), .enable(enable[5]), .state(state), .gray_data(gray_data),
		.CNT_n		({sum,flag}),
		.CNT		(CNT6)
	);
	CNTCell #(.INITIAL({8'd0,7'b1000010}), .count(count), .pe(pe), .finish(finish)) CNT_5(
		.clk(clk), .reset(reset), .enable(enable[4]), .state(state), .gray_data(gray_data),
		.CNT_n		(`INFINITY),
		.CNT		(CNT5)
	);
	CNTCell #(.INITIAL({8'd0,7'b1000100}), .count(count), .pe(pe), .finish(finish)) CNT_4(
		.clk(clk), .reset(reset), .enable(enable[3]), .state(state), .gray_data(gray_data),
		.CNT_n		(CNT4_n),
		.CNT		(CNT4)
	);
	CNTCell #(.INITIAL({8'd0,7'b1001000}), .count(count), .pe(pe), .finish(finish)) CNT_3(
		.clk(clk), .reset(reset), .enable(enable[2]), .state(state), .gray_data(gray_data),
		.CNT_n		(CNT3_n),
		.CNT		(CNT3)
	);
	CNTCell #(.INITIAL({8'd0,7'b1010000}), .count(count), .pe(pe), .finish(finish)) CNT_2(
		.clk(clk), .reset(reset), .enable(enable[1]), .state(state), .gray_data(gray_data),
		.CNT_n		(CNT2_n),
		.CNT		(CNT2)
	);
	CNTCell #(.INITIAL({8'd0,7'b1100000}), .count(count), .pe(pe), .finish(finish)) CNT_1(
		.clk(clk), .reset(reset), .enable(enable[0]), .state(state), .gray_data(gray_data),
		.CNT_n		(CNT1_n),
		.CNT		(CNT1)
	);
endmodule

module CNTCell(
clk,
reset,
enable,
state,
gray_data,
CNT_n,
CNT
);
	parameter 	INITIAL = 15'd0,
				count 	= 1,	
				pe 		= 3,
				finish 	= 5;
	input 	clk;
	input 	reset;
	input	enable;
	input 	[2:0]	state;
	input	[7:0] 	gray_data;
	input 	[14:0] 	CNT_n;
	output 	[14:0] 	CNT;
	reg 	[14:0] 	CNT;
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset) 							CNT 		<= INITIAL;
		else if(state == finish) 			CNT 		<= {8'd0,7'b1000001};
		else if(state == count && enable) 	CNT[14:7] 	<= CNT[14:7] + 8'd1;
		else if(state == pe)				CNT 		<= CNT_n;
	end
endmodule
