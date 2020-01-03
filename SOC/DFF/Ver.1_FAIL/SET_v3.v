// Description: Main module
// 		Control: Control_3.v
// 		MapCell: MapCell_v2.v / MapCell_v3.v / MapCell_v4.v
// Date: 2019/11/30
// Author: Hu, Ren Bo
module SET( clk , rst, en, central, radius, mode, busy, valid, candidate );
input clk, rst, en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output busy, valid;
output[7:0] candidate;
wire[11:0] circle_data;
wire[2:0] now_id;
wire[1:0] reg_mode, count;
wire Candidate_en;

Control Control_0(
	.clk			(clk), 
	.rst			(rst), 
	.en				(en), 
	.central		(central), 
	.radius			(radius), 
	.mode			(mode), 
	.busy			(busy), 
	.valid			(valid), 
	.now_id			(now_id), 
	.circle_data	(circle_data), 
	.reg_mode		(reg_mode), 
	.Candidate_en	(Candidate_en),
	.count			(count));
MapCell_Candidate_adder MapCell_Candidate_adder_0(
	.clk			(clk),
	.rst			(rst),
	.now_id			(now_id), 
	.circle_data	(circle_data),
	.reg_mode		(reg_mode),
	.count			(count),
	.Candidate_en	(Candidate_en),
	.candidate		(candidate)
);
endmodule

module MapCell_Candidate_adder(
clk,
rst,
now_id,
circle_data,
reg_mode,
count,
Candidate_en,
candidate
);
input[11:0] circle_data;
input[2:0] now_id;
input[1:0] reg_mode, count;
input clk, rst, Candidate_en;
output[7:0] candidate;
wire[7:0] result;
MapCell MapCell_0(
	.now_id			(now_id), 
	.circle_data	(circle_data), 
	.result			(result));
Candidate_adder Candidate_adder_0(
	.clk			(clk), 
	.rst			(rst), 
	.result			(result),
	.reg_mode		(reg_mode),
	.Candidate_en	(Candidate_en),
	.count			(count), 
	.candidate		(candidate));
endmodule

