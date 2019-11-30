// Description: Main module
// 		Control: Control_3.v
// 		MapCell: MapCell_v2.v / MapCell_v3.v / MapCell_v4.v
// Date: 2019/11/30
// Author: Hu, Ren Bo
module SET( clk , rst, en, central, radius, mode, busy, valid, candidate );
input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output busy, valid;
output reg[7:0] candidate;

//real register
reg[5:0] now_0, now_1, now_2;
reg[3:0] Ax, Ay, Bx, By, Cx, Cy, Ar, Br, Cr;
reg[1:0] reg_mode;

//pipeline register
reg tmp_0, tmp_1, tmp_2;

//not register
wire[7:0] next_candidate;
wire[5:0] next_0, next_1, next_2;
wire count;
wire result_0, result_1, result_2;
reg[3:0] center_x0, center_x1, center_x2, center_x3, center_y0, center_y1, center_y2, center_r0, center_r1, center_r2;


MapCell MapCell_0(.now(now_0), .center_x(center_x0), .center_y(center_y0), .center_r(center_r0), .result(result_0));
MapCell MapCell_1(.now(now_1), .center_x(center_x1), .center_y(center_y1), .center_r(center_r1), .result(result_1));
MapCell MapCell_2(.now(now_2), .center_x(center_x2), .center_y(center_y2), .center_r(center_r2), .result(result_2));
Control Controler(.clk(clk) , .rst(rst), .en(en), .next_candidate(next_candidate), .candidate(candidate), .busy(busy), 
.valid(valid), .tmp_0(tmp_0), .tmp_1(tmp_1), .tmp_2(tmp_2), .next_0(next_0), .next_1(next_1), .next_2(next_2), 
.now_0(now_0), .now_1(now_1), .now_2(now_2), .reg_mode(reg_mode), .count(count));

always@(negedge clk or posedge rst) begin // pipeline
	if(rst)
		{tmp_0, tmp_1, tmp_2} <= 3'b0;
	else 
		{tmp_0, tmp_1, tmp_2} <= {result_0, result_1, result_2};
end

always@(posedge clk) begin
	if(en) begin
		{Ax, Ay, Bx, By, Cx, Cy} <= central;
		{Ar, Br, Cr} <= radius;
		reg_mode <= mode;
		case(mode)
			2'b00: begin	
				now_0 <= 6'd0;
				now_1 <= 6'd1;
				now_2 <= 6'd2;
			end
			2'b01: begin
				now_0 <= 6'd0;
				now_1 <= 6'd0;
				now_2 <= 6'd43;
			end
			2'b10: begin
				now_0 <= 6'd0;
				now_1 <= 6'd0;
				now_2 <= 6'd43;
			end
			2'b11: begin
				now_0 <= 6'd0;
				now_1 <= 6'd0;
				now_2 <= 6'd0;
			end
		endcase
		candidate <= 0;
	end
	else begin
		candidate <= next_candidate;
		now_0 <= next_0;
		now_1 <= next_1;
		now_2 <= next_2;
	end
end


always@(*) begin // MUX of MapCell center_input
	case(reg_mode)
		2'b00: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Ax, Ay, Ar};
			{center_x2, center_y2, center_r2} = {Ax, Ay, Ar};
		end	
		2'b01: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Bx, By, Br};
			{center_x2, center_y2, center_r2} = (count)? {Ax, Ay, Ar} : {Bx, By, Br};
		end	
		2'b10: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Bx, By, Br};
			{center_x2, center_y2, center_r2} = (count)? {Ax, Ay, Ar} : {Bx, By, Br};
		end	
		2'b11: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Bx, By, Br};
			{center_x2, center_y2, center_r2} = {Cx, Cy, Cr};
		end	
		default: begin
			{center_x0, center_y0, center_r0} = 12'bx;
			{center_x1, center_y1, center_r1} = 12'bx;
			{center_x2, center_y2, center_r2} = 12'bx;
		end	
	endcase	
end
endmodule
