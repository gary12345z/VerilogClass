`timescale 1ns/100ps 

module encoder (
clk, 
reset, 
state,
HC1,
HC2,
HC3,
HC4,
HC5,
HC6,
M1,
M2,
M3,
M4,
M5,
M6,
data_s,
data_l
);

//============================================in,out===============================//
	input clk;
	input reset;
	input [2:0]state;
	input [5:0]data_l;
	input [5:0]data_s;
	
	output [7:0]HC1;
	output [7:0]HC2;
	output [7:0]HC3;
	output [7:0]HC4;
	output [7:0]HC5;
	output [7:0]HC6;
	
	output [7:0]M1;
	output [7:0]M2;
	output [7:0]M3;
	output [7:0]M4;
	output [7:0]M5;
	output [7:0]M6;
	
	wire [1:6]inv_data_l = data_l;
	wire [1:6]inv_data_s = data_s;
	EncodeCell Cell[1:6](
		.clk		(clk),
		.reset		(reset),
		.data_l		(inv_data_l),
		.data_s		(inv_data_s),
		.state		(state),
		.HC			({HC1, HC2, HC3, HC4, HC5, HC6}),
		.M			({M1,  M2,  M3,  M4,  M5,  M6 })
	);
endmodule

module EncodeCell(
clk,
reset,
data_l,
data_s,
state,
HC,
M
);
	input 	clk;
	input 	reset;
	input 	data_l;
	input 	data_s;
	input	[2:0]	state;
	output	[7:0] 	HC;
	output	[7:0] 	M;
	reg 	[7:0] 	HC;
	reg 	[7:0] 	M;
	always @ (posedge clk or posedge reset) begin
		if(reset) begin
			HC 	<= 8'd0;
			M 	<= 8'd0;
		end
		else 
			if(state == `DECODE && data_l) begin
					HC 	<= {HC[6:0]	,1'b0};
					M 	<= {M[6:0]	,1'b1};
				end
			else if(state == `DECODE && data_s) begin
					HC 	<= {HC[6:0]	,1'b1};
					M 	<= {M[6:0]	,1'b1};
				end
			else if (state == `CODEV) begin
				HC 	<= 8'd0;
				M 	<= 8'd0;
			end
	end
endmodule
