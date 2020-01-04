// Description: Main module
// 		Control: Control_3_v2.v
// 		MapCell: MapCell_v6.v
// Date: 2019/11/30
// History: 2019/01/04 - set negedge clk pipeline into posedge clk
// Author: Hu, Ren Bo

module SET( 
clk, 
rst, 
en, 
central, 
radius,
mode, 
busy, 
valid, 
candidate);
input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output busy, valid;
output[7:0] candidate;

//not register
wire[11:0] circle_A, circle_B, circle_C;
wire[5:0] now_0, now_1, now_2;
wire[1:0] reg_mode;
wire result_0, result_1, result_2, count, Candidate_en, MapCell_en;

Control Control_U(
	.clk			(clk), 
	.rst			(rst), 
	.en				(en), 
	.central		(central), 
	.radius			(radius),
	.circle_A		(circle_A),
	.circle_B		(circle_B),
	.circle_C		(circle_C), 
	.mode			(mode), 
	.reg_mode		(reg_mode),
	.busy			(busy), 
	.valid			(valid), 
	.now_0			(now_0), 
	.now_1			(now_1), 
	.now_2			(now_2), 
	.count			(count),
	.Candidate_en	(Candidate_en),
	.MapCell_en		(MapCell_en)
);

GenerateAddress_MapCell GenerateAddress_MapCell_U0(
	.clk			(clk), 
	.rst			(rst),
	.now_0			(now_0), 
	.now_1			(now_1), 
	.now_2			(now_2),
	.circle_A		(circle_A), 
	.circle_B		(circle_B), 
	.circle_C		(circle_C), 
	.reg_mode		(reg_mode), 
	.count			(count), 
	.MapCell_en		(MapCell_en), 
	.result_0		(result_0), 
	.result_1		(result_1), 
	.result_2		(result_2)
);

CandidateAdder CandidateAdder_U(
	.clk		(clk), 
	.rst		(rst), 
	.en			(Candidate_en), 
	.now_0		(now_0),
	.count		(count),
	.reg_mode	(reg_mode),
	.result_0	(result_0),
	.result_1	(result_1),
	.result_2	(result_2),
	.candidate	(candidate)
);

endmodule

module GenerateAddress_MapCell(
circle_A, 
circle_B, 
circle_C, 
now_0,
now_1,
now_2,
reg_mode, 
count, 
clk, 
rst, 
MapCell_en, 
result_0, 
result_1, 
result_2
);
input[11:0] circle_A, circle_B, circle_C;
input[5:0] now_0, now_1, now_2;
input[1:0] reg_mode;
input count, clk, rst, MapCell_en;
output result_0, result_1, result_2;

wire[3:0] center_x0, center_x1, center_x2, center_y0, center_y1, center_y2, center_r0, center_r1, center_r2;
GenerateAddress GenerateAddress_U(
	.circle_A	(circle_A),
	.circle_B	(circle_B),
	.circle_C	(circle_C),
	.reg_mode	(reg_mode),
	.count		(count),
	.center_x0	(center_x0), 
	.center_x1	(center_x1), 
	.center_x2	(center_x2), 
	.center_y0	(center_y0), 
	.center_y1	(center_y1), 
	.center_y2	(center_y2), 
	.center_r0	(center_r0), 
	.center_r1	(center_r1), 
	.center_r2	(center_r2)
);

MapCell MapCell_U0(
	.clk		(clk), 
	.rst		(rst), 
	.en			(MapCell_en),
	.now		(now_0), 
	.center_x	(center_x0), 
	.center_y	(center_y0), 
	.center_r	(center_r0), 
	.result		(result_0)
);
MapCell MapCell_U1(
	.clk		(clk), 
	.rst		(rst), 
	.en			(MapCell_en),
	.now		(now_1), 
	.center_x	(center_x1), 
	.center_y	(center_y1), 
	.center_r	(center_r1), 
	.result		(result_1)
);
MapCell MapCell_U2(
	.clk		(clk), 
	.rst		(rst), 
	.en			(MapCell_en),
	.now		(now_2), 
	.center_x	(center_x2), 
	.center_y	(center_y2), 
	.center_r	(center_r2), 
	.result		(result_2)
);
endmodule
