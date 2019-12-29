module SET(
// special signal
clk, 
rst, 
// en=1, read "central", "radius", "mode"
en, 
central, 
radius, 
mode, 
// signal shows that if the output ready or not
busy, 
valid, 
// counter
candidate 
);
input 	clk, rst;
input 	en;
input 	[23:0] central;
input 	[11:0] radius;
input 	[1:0] mode;
output 	busy;
output 	valid;
output 	[7:0] candidate;
wire[5:0] WorkAddr;
wire[23:0] reg_central;
wire[11:0] reg_radius;
wire[1:0] reg_mode;
stateGenerator stateGenerator(
	.clk			(clk), 
	.rst	 		(rst), 
	.addr 			(WorkAddr), 
	.en		 		(en), 
	.busy	 		(busy), 
	.valid	 		(valid));
addressGenerator addressGenerator(
	.clk	 		(clk), 
	.rst	 		(rst), 
	.en		 		(en), 
	.busy	 		(busy), 
	.central 		(central), 
	.radius			(radius), 
	.mode			(mode), 
	.reg_central 	(reg_central), 
	.reg_radius		(reg_radius), 
	.reg_mode		(reg_mode), 
	.addr			(WorkAddr));
TMP t(
	.addressIn 		(WorkAddr), 
	.reg_central 	(reg_central), 
	.reg_radius		(reg_radius), 
	.reg_mode		(reg_mode), 
	.clk 			(clk), 
	.rst			(rst), 
	.en				(en), 
	.candidate 		(candidate));
endmodule

//////////////////////////////state//////////////////////////
module stateGenerator(
// special signal
clk, 
rst, 
// signal for addressGenerator
addr, 
// from INPUT
en, 
// signal shows that if the output ready or not
busy, 
valid
);
input[5:0] addr;
input clk, rst, en;
output busy, valid;
// Register
reg [1:0] cs;
reg busy, valid;
// Wire
reg [1:0] ns;
always @ (*) begin
	if(rst)
		ns <= 2'd0;
	else begin
		case(cs) 
		2'd0 : ns <= (en) ? 2'd1 : 2'd0;
		2'd1 : ns <= (addr == 6'd63) ? 2'd2 : 2'd1;
		2'd2 : ns <= 2'd0;
		default : ns <= 2'd0;
		endcase
	end
end
always @ (posedge clk) begin
	cs <= ns;
	busy <= (ns == 2'd1) ? 1'd1 : 1'd0;
	valid <= (ns == 2'd2) ? 1'd1 : 1'd0;
end
endmodule 

module MapGNT(
addressIn, 
OutX, 
OutY
);
input  [5:0] addressIn;
output[3:0] OutX;
output[3:0] OutY;
assign OutX = addressIn[5:3] + 3'd1;
assign OutY = addressIn[2:0] + 3'd1;
endmodule

//////////////////////////////////InCircleJudge////////////////////////////////////
module ICJ(
Xaddr, 
XCentral, 
Yaddr, 
YCentral, 
radius, 
Circle
);
input[3:0] Xaddr, Yaddr;
input[3:0] XCentral, YCentral;
input[3:0] radius;
output Circle;
wire[7:0] XSquare, YSquare, RSquare;
wire[8:0] SquareSum;
wire[3:0] DisSum1, DisSum2;
assign DisSum1 = (Xaddr > XCentral) ? (Xaddr - XCentral) : (XCentral - Xaddr);
assign DisSum2 = (Yaddr > YCentral) ? (Yaddr - YCentral) : (YCentral - Yaddr);
square sq1(.in(DisSum1), .out(XSquare));
square sq2(.in(DisSum2), .out(YSquare));
square sq3(.in(radius) , .out(RSquare));
assign SquareSum = XSquare + YSquare;
assign Circle = (SquareSum <= RSquare);
endmodule

///////////////////////////////ThreeICJ & Counter Addr/////////////////////////////////////
module judge(
addressIn, 
reg_central, 
reg_radius, 
reg_mode, 
DecideResult
);
input[5:0] addressIn;
input[23:0] reg_central;
input[11:0] reg_radius;
input[1:0] reg_mode;
output DecideResult;
// Wire
reg DecideResult;
wire[3:0] OutX, OutY;
wire C1, C2, C3;
MapGNT MPGNT(
	.addressIn (addressIn), 
	.OutX	   (OutX), 
	.OutY	   (OutY));
ICJ	icj1(
	.Xaddr	  (OutX), 
	.Yaddr	  (OutY), 
	.XCentral (reg_central[23:20]), 
	.YCentral (reg_central[19:16]), 
	.radius	  (reg_radius[11:8]), 
	.Circle	  (C1));
ICJ	icj2(
	.Xaddr	  (OutX), 
	.Yaddr	  (OutY), 
	.XCentral (reg_central[15:12]), 
	.YCentral (reg_central[11:8]), 
	.radius	  (reg_radius[7:4]), 
	.Circle	  (C2));
ICJ	icj3(
	.Xaddr	  (OutX), 
	.Yaddr	  (OutY), 
	.XCentral (reg_central[7:4]), 
	.YCentral (reg_central[3:0]), 
	.radius	  (reg_radius[3:0]), 
	.Circle	  (C3));
always @ (*) begin
	case(reg_mode)
		2'd0 : DecideResult = C1;
		2'd1 : DecideResult = C1 & C2;
		2'd2 : DecideResult = ((C1 | C2) & (~(C1 & C2)));
		2'd3 : DecideResult = ((C1 & C2)|(C2 & C3)|(C1 & C3)) & (~(C1 & C2 & C3));
		default : DecideResult = 1'b0;
	endcase	
end
endmodule

/////////////////////candidate Counter/////////////////////////////////////////////
module candicateCounter(
clk, 
rst, 
plus, 
en, 
candidate
);
input rst, clk, plus, en;
output reg[7:0] candidate;

always @ (posedge clk or posedge rst)begin
	if(rst)
		candidate <= 8'd0;
	else if(en)
		candidate <= 8'd0;
	else if (plus)
		candidate <= candidate + 8'd1 ;
	else
		candidate <= candidate;
end
endmodule
/////////////////////Address Counter/////////////////////////////////////////////
// add into controler
module addressGenerator(
clk, 
rst, 
en, 
busy, 
central,
radius,
mode,
reg_central,
reg_radius,
reg_mode,
addr
);
input[23:0] central;
input[11:0] radius;
input[1:0] mode;
input rst, clk, en, busy;
output[23:0] reg_central;
output[11:0] reg_radius;
output[5:0] addr;
output[1:0] reg_mode;
// Register
reg[23:0] reg_central;
reg[11:0] reg_radius;
reg[5:0] addr;
reg[1:0] reg_mode;
// Wire
wire addrEnd;
assign addrEnd = (addr == 6'd63);
always @ (posedge clk or posedge rst) begin
	if(rst)
		addr <= 6'd0;
	else if(en) begin
		addr <= 6'd0;
		reg_central <= central;
		reg_radius <= radius;
		reg_mode <= mode;
	end
	else if(busy)
		addr <= (addrEnd) ? addr : (addr + 6'd1);
	else 
		addr <= 6'd0;
end
endmodule

////////////////////////////Square///////////////////////////////////////////
module square(
in, 
out
);
input[3:0] in;
output[7:0] out;
// Wire
reg[7:0] out;
always@(*) begin
	case(in)
		4'd 0: out = 8'd  0;
		4'd 1: out = 8'd  1;
		4'd 2: out = 8'd  4;
		4'd 3: out = 8'd  9;
		4'd 4: out = 8'd 16;
		4'd 5: out = 8'd 25;
		4'd 6: out = 8'd 36;
		4'd 7: out = 8'd 49;
		4'd 8: out = 8'd 64;
		4'd 9: out = 8'd 81;
		4'd10: out = 8'd100;
		4'd11: out = 8'd121;
		4'd12: out = 8'd144;
		4'd13: out = 8'd169;
		4'd14: out = 8'd196;
		4'd15: out = 8'd255;
		default: out = 8'bx;
	endcase
end
endmodule

module TMP(
addressIn,
reg_central,
reg_radius,
reg_mode,
clk,
rst,
en,
candidate
);
input 	clk, rst;
input 	en;
input 	[23:0] reg_central;
input 	[11:0] reg_radius;
input	[5:0] addressIn;
input 	[1:0] reg_mode;
output 	[7:0] candidate;
judge judge(
	.addressIn 		(addressIn), 
	.reg_central 	(reg_central), 
	.reg_radius		(reg_radius), 
	.reg_mode		(reg_mode), 
	.DecideResult	(DecideResult));
candicateCounter candiCal(
	.clk 			(clk), 
	.rst			(rst), 
	.plus			(DecideResult), 
	.en				(en), 
	.candidate 		(candidate));
endmodule
