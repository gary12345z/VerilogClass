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
output[7:0] candidate;



//pipeline register
reg tmp_0, tmp_1, tmp_2;

//not register
wire[5:0] now_0, now_1, now_2;
wire[3:0] center_x0, center_x1, center_x2, center_y0, center_y1, center_y2, center_r0, center_r1, center_r2;
wire result_0, result_1, result_2;


MapCell MapCell_0(.now(now_0), .center_x(center_x0), .center_y(center_y0), .center_r(center_r0), .result(result_0));
MapCell MapCell_1(.now(now_1), .center_x(center_x1), .center_y(center_y1), .center_r(center_r1), .result(result_1));
MapCell MapCell_2(.now(now_2), .center_x(center_x2), .center_y(center_y2), .center_r(center_r2), .result(result_2));
Control Controler(.clk(clk) , .rst(rst), .en(en), .central(central), .radius(radius), .mode(mode), .candidate(candidate), .busy(busy), 
.valid(valid), .tmp_0(tmp_0), .tmp_1(tmp_1), .tmp_2(tmp_2), .now_0(now_0), .now_1(now_1), .now_2(now_2), 
.center_x0(center_x0), .center_x1(center_x1), .center_x2(center_x2), .center_y0(center_y0), .center_y1(center_y1), .center_y2(center_y2), 
.center_r0(center_r0), .center_r1(center_r1), .center_r2(center_r2));

always@(posedge clk or posedge rst) begin // pipeline
	if(rst)
		{tmp_0, tmp_1, tmp_2} <= 3'b0;
	else 
		{tmp_0, tmp_1, tmp_2} <= {result_0, result_1, result_2};
end

endmodule
