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
	wire [5:0]MINO1;
	wire [5:0]MINO2;
	wire [6:0]flag;
	wire [6:0]CNTF1; //Flag
	wire [6:0]CNTF2;
	wire [6:0]CNTF3;
	wire [6:0]CNTF4;
	wire [6:0]CNTF5;
	wire [6:0]CNTF6;
//====================================include module=======================================//
	// Calculate and storage CNT
	CNTcounter U1 (	
		.clk(clk),
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
	// find 2 smallest number in 6 number
	PE	U2 (
		.CNT1({CNT1,CNTF1}),
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
	// Control
	CU  U3 (
		.clk(clk),
		.reset(reset),
		.gray_valid(gray_valid),
		.state(state),
		.CNT_valid(CNT_valid),
		.code_valid(code_valid),
		.counter(count));
	// store different round of min1 & min2
	MINmem 	U5	(
		.clk(clk),
		.reset(reset),
		.addr(count),
		.state(state),
		.mini2(CNT5_n[5:0]),
		.mini1(CNT6_n[5:0]),
		.MINO2(MINO2),
		.MINO1(MINO1));
	
	encoder U6 (
		.clk(clk),
		.reset(reset),
		.state(state),
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
		.data_s(MINO1[5:0]),
		.data_l(MINO2[5:0]));
endmodule

`include "CNTcounterplus.v"
`include "PE.v"
`include "CU.v"
`include "CNTmem.v"
`include "MINmem.v"
`include "encoder.v"
`include "encodemem.v"
