module GenerateAddress(
circle_A,
circle_B,
circle_C,
reg_mode,
count,
center_x0, 
center_x1, 
center_x2, 
center_y0, 
center_y1, 
center_y2, 
center_r0, 
center_r1, 
center_r2
);
input[11:0] circle_A, circle_B, circle_C;
input[1:0] reg_mode;
input count;
output[3:0] center_x0, center_x1, center_x2, center_y0, center_y1, center_y2, center_r0, center_r1, center_r2;
reg[3:0] center_x0, center_x1, center_x2, center_y0, center_y1, center_y2, center_r0, center_r1, center_r2;

always@(*) begin 
	case(reg_mode)
		2'b00: begin
			{center_x0, center_y0, center_r0} = circle_A;
			{center_x1, center_y1, center_r1} = circle_A;
			{center_x2, center_y2, center_r2} = circle_A;
		end	
		2'b01: begin
			{center_x0, center_y0, center_r0} = circle_A;
			{center_x1, center_y1, center_r1} = circle_B;
			{center_x2, center_y2, center_r2} = (count)? circle_A : circle_B;
		end	
		2'b10: begin
			{center_x0, center_y0, center_r0} = circle_A;
			{center_x1, center_y1, center_r1} = circle_B;
			{center_x2, center_y2, center_r2} = (count)? circle_A : circle_B;
		end	
		2'b11: begin
			{center_x0, center_y0, center_r0} = circle_A;
			{center_x1, center_y1, center_r1} = circle_B;
			{center_x2, center_y2, center_r2} = circle_C;
		end	
		default: begin
			{center_x0, center_y0, center_r0} = 12'bx;
			{center_x1, center_y1, center_r1} = 12'bx;
			{center_x2, center_y2, center_r2} = 12'bx;
		end	
	endcase	
end
endmodule