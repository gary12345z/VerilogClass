module  SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

input 	clk, rst;
input 	en;
input 	[23:0] central;
input 	[11:0] radius;
input 	[1:0] mode;
output 	busy;
output 	valid;
output 	[7:0] candidate;

wire[5:0] WorkAddr;

stateGenerator    stateGenerator(.clk(clk), .rst(rst), .addrEnd(addrEnd), .en(en), .busy(busy), .valid(valid));
addressGenerator  addressGenerator(.clk(clk), .rst(rst), .en(en), .busy(busy), .addrEnd(addrEnd), .addr(WorkAddr));
judge	          judge(.addressIn(WorkAddr), .central(central), .radius(radius), .mode(mode), .DecideResult(DecideResult));
candicateCounter  candiCal(.clk(clk), .rst(rst), .plus(DecideResult), .en(en), .candidate(candidate));

endmodule

//////////////////////////////state//////////////////////////
module stateGenerator(clk, rst, addrEnd, en, busy, valid);

input clk, rst, addrEnd, en;
output busy, valid;
reg [1:0] cs, ns;

assign busy  = (cs == 2'd1) ? 1'd1 : 1'd0;
assign valid = (cs == 2'd2) ? 1'd1 : 1'd0;

always @ (*) begin
	if(rst)
		ns <= 2'd0;
	else begin
		case(cs) 
		2'd0 : ns <= (en) ? 2'd1 : 2'd0;
		2'd1 : ns <= (addrEnd) ? 2'd2 : 2'd1;
		2'd2 : ns <= 2'd0;
		default : ns <= 2'd0;
		endcase
	end
end

always @ (posedge clk)
	cs <= ns;
	
endmodule 

module MapGNT(addressIn, OutX, OutY);

input  [5:0] addressIn;
output[3:0] OutX;
output[3:0] OutY;

assign OutX = addressIn[5:3] + 3'd1;
assign OutY = addressIn[2:0] + 3'd1;

endmodule

//////////////////////////////////InCircleJudge////////////////////////////////////
module ICJ(Xaddr, XCentral, Yaddr, YCentral, radius, Circle);

input[3:0] Xaddr, Yaddr;
input[3:0] XCentral, YCentral;
input[3:0] radius;
output Circle;

wire[6:0] XSquare, YSquare, RSquare;
wire[7:0] SquareSum;
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
module judge(addressIn, central, radius, mode, DecideResult);

input[5:0] addressIn;
input[23:0] central;
input[11:0] radius;
input[1:0] mode;
output reg DecideResult;

wire[3:0] OutX, OutY;
wire C1, C2, C3;

MapGNT MPGNT(.addressIn(addressIn), .OutX(OutX), .OutY(OutY));
ICJ	icj1(.Xaddr(OutX), .Yaddr(OutY), .XCentral(central[23:20]), .YCentral(central[19:16]), .radius(radius[11:8]), .Circle(C1));
ICJ	icj2(.Xaddr(OutX), .Yaddr(OutY), .XCentral(central[15:12]), .YCentral(central[11:8]), .radius(radius[7:4]), .Circle(C2));
ICJ	icj3(.Xaddr(OutX), .Yaddr(OutY), .XCentral(central[7:4]), .YCentral(central[3:0]), .radius(radius[3:0]), .Circle(C3));

always @ (*) begin
	case(mode)
		2'd0 : DecideResult = C1;
		2'd1 : DecideResult = C1 & C2;
		2'd2 : DecideResult = ((C1 | C2) & (~(C1 & C2)));
		2'd3 : DecideResult = ((C1 & C2)|(C2 & C3)|(C1 & C3)) & (~(C1 & C2 & C3));
		default : DecideResult = 1'b0;
	endcase	
end

endmodule

/////////////////////candidate Counter/////////////////////////////////////////////
module candicateCounter(clk, rst, plus, en, candidate);

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
module addressGenerator(clk, rst, en, busy, addrEnd, addr);

input rst, clk, en, busy;
output addrEnd;
output reg[5:0] addr;

assign addrEnd = (addr == 6'd63);

always @ (posedge clk or posedge rst) begin
	if(rst)
		addr <= 6'd0;
	else if(en)
		addr <= 6'd0;
	else if(busy)
		addr <= (addrEnd) ? addr : (addr + 6'd1);
	else 
		addr <= 6'd0;
end

endmodule

////////////////////////////Square///////////////////////////////////////////
module square(in, out);

input[3:0] in;
output[6:0] out;

wire c1, c2, c3, c4, c5, c6, c7, c8;

assign	c1 = ( in == 4'd1 );
assign	c2 = ( in == 4'd2 );
assign	c3 = ( in == 4'd3 );
assign	c4 = ( in == 4'd4 );
assign	c5 = ( in == 4'd5 );
assign  c6 = ( in == 4'd6 );
assign  c7 = ( in == 4'd7 );
assign  c8 = ( in == 4'd8 );
assign  out = (c1) ? 7'd1  :
			  (c2) ? 7'd4  :
			  (c3) ? 7'd9  :
			  (c4) ? 7'd16 :
			  (c5) ? 7'd25 :
			  (c6) ? 7'd36 :
			  (c7) ? 7'd49 :  
			  (c8) ? 7'd64 : 7'd0;

endmodule