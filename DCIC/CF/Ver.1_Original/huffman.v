`timescale 1ns/10ps



module huffman(clk, reset, gray_valid, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6, gray_data,M1,M2,M3,M4,M5,M6,
    code_valid, HC1, HC2, HC3, HC4, HC5, HC6);

//============================================input.output=================================//

	input clk;
	input reset;
	input gray_valid;
	input [7:0] gray_data;
	output CNT_valid;
	output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
	output code_valid;
	output [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
	output [7:0] M1, M2, M3, M4, M5, M6;

//=========================================wire============================================//
	
	wire [2:0]count;
	wire [2:0]state;
	wire [14:0]CNT1_n;
	wire [14:0]CNT2_n;
	wire [14:0]CNT3_n;
	wire [14:0]CNT4_n;
	wire [14:0]CNT5_n;
	wire [14:0]CNT6_n;
	wire [7:0]sum;
	wire [14:0]MEMO1;
	wire [14:0]MEMO2;
	wire [14:0]MEMO3;
	wire [14:0]MEMO4;
	wire [14:0]MEMO5;
	wire [14:0]MEMO6;
	wire [14:0]MINO1;
	wire [14:0]MINO2;
	wire [7:0]HC1_n;
	wire [7:0]HC2_n;
	wire [7:0]HC3_n;
	wire [7:0]HC4_n;
	wire [7:0]HC5_n;
	wire [7:0]HC6_n;
	wire [7:0]M1_n;
	wire [7:0]M2_n;
	wire [7:0]M3_n;
	wire [7:0]M4_n;
	wire [7:0]M5_n;
	wire [7:0]M6_n;
	wire [6:0]flag;
	wire [6:0]CNTF1;
	wire [6:0]CNTF2;
	wire [6:0]CNTF3;
	wire [6:0]CNTF4;
	wire [6:0]CNTF5;
	wire [6:0]CNTF6;
//====================================include module=======================================//

	CNTcounter U1 (.clk(clk),
						.reset(reset),
						.state(state),
						.gray_data(gray_data),
						.CNT1_n(CNT1_n),
						.CNT2_n(CNT2_n),
						.CNT3_n(CNT3_n),
						.CNT4_n(CNT4_n),
						.sum(sum),
						.flag(flag),
						.CNT1({CNT1,CNTF1}),
						.CNT2({CNT2,CNTF2}),
						.CNT3({CNT3,CNTF3}),
						.CNT4({CNT4,CNTF4}),
						.CNT5({CNT5,CNTF5}),
						.CNT6({CNT6,CNTF6}));
	
	PE	U2 (.CNT1({CNT1,CNTF1}),
			.CNT2({CNT2,CNTF2}),
			.CNT3({CNT3,CNTF3}),	
			.CNT4({CNT4,CNTF4}),
			.CNT5({CNT5,CNTF5}),
			.CNT6({CNT6,CNTF6}),
			.CNT1_n(CNT1_n),
			.CNT2_n(CNT2_n),
			.CNT3_n(CNT3_n),
			.CNT4_n(CNT4_n),
			.CNT5_n(CNT5_n),
			.CNT6_n(CNT6_n),
			.sum(sum),
			.flag(flag));
			
	CU  U3 (.clk(clk),
		   .reset(reset),
		   .gray_valid(gray_valid),
		   .state(state),
		   .CNT_valid(CNT_valid),
		   .code_valid(code_valid),
		   .counter(count));
		   
	CNTmem 	U4 	(.clk(clk),
				  .reset(reset),
				  .addr(count),
				  .state(state),
				  .CNT1({CNT1,CNTF1}),
		  		  .CNT2({CNT2,CNTF2}),
				  .CNT3({CNT3,CNTF3}),
				  .CNT4({CNT4,CNTF4}),
				  .CNT5({CNT5,CNTF5}),
				  .CNT6({CNT6,CNTF6}),
				  .sum(sum),
				  .flag(flag),
				  
				  .MEMO1(MEMO1),
				  .MEMO2(MEMO2),
				  .MEMO3(MEMO3),
				  .MEMO4(MEMO4),
				  .MEMO5(MEMO5),
				  .MEMO6(MEMO6));
	MINmem 	U5	(.clk(clk),
				  .reset(reset),
				  .addr(count),
				  .state(state),
				  .mini2(CNT5_n),
				  .mini1(CNT6_n),
				  .MINO2(MINO2),
				  .MINO1(MINO1));
	
	encoder U6 (.HD1(MEMO1),
				.HD2(MEMO2),
				.HD3(MEMO3),
				.HD4(MEMO4),
				.HD5(MEMO5),
				.HD6(MEMO6),
				.HC1(HC1),
				.HC2(HC2),
				.HC3(HC3),
				.HC4(HC4),
				.HC5(HC5),
				.HC6(HC6),
				.M1(M1),
				.M2(M2),
				.M3(M3),
				.M4(M4),
				.M5(M5),
				.M6(M6),
				.data_s(MINO1),
				.data_l(MINO2),
				.HC1_n(HC1_n),
				.HC2_n(HC2_n),
				.HC3_n(HC3_n),
				.HC4_n(HC4_n),
				.HC5_n(HC5_n),
				.HC6_n(HC6_n),
				.M1_n(M1_n),
				.M2_n(M2_n),
				.M3_n(M3_n),
				.M4_n(M4_n),
				.M5_n(M5_n),
				.M6_n(M6_n));
				
	encodemem U7	(	.clk(clk),
				.reset(reset),
				.state(state),
				.HC1_n(HC1_n),
				.HC2_n(HC2_n),
				.HC3_n(HC3_n),
				.HC4_n(HC4_n),
				.HC5_n(HC5_n),
				.HC6_n(HC6_n),
				.M1_n(M1_n),
				.M2_n(M2_n),
				.M3_n(M3_n),
				.M4_n(M4_n),
				.M5_n(M5_n),
				.M6_n(M6_n),
				.HC1(HC1),
				.HC2(HC2),
				.HC3(HC3),
				.HC4(HC4),
				.HC5(HC5),
				.HC6(HC6),
				.M1(M1),
				.M2(M2),
				.M3(M3),
				.M4(M4),
				.M5(M5),
				.M6(M6));



endmodule

`include "Ver.1_Original/CNTcounterplus.v"
`include "Ver.1_Original/PE.v"
`include "Ver.1_Original/CU.v"
`include "Ver.1_Original/CNTmem.v"
`include "Ver.1_Original/MINmem.v"
`include "Ver.1_Original/encoder.v"
`include "Ver.1_Original/encodemem.v"
