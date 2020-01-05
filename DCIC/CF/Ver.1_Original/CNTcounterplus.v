`timescale 1ns/10ps



module CNTcounter (clk, reset, state, gray_data, CNT1_n,CNT2_n,CNT3_n,CNT4_n,sum,flag, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6);

	parameter	count = 1,	
				pe = 3,
				finish = 5;
	input 	clk;
	input 	reset;
	input 	[2:0]	state;
	input	[7:0] 	gray_data,sum;
	input	[6:0]	flag;
	input 	[14:0]	CNT1_n,CNT2_n,CNT3_n,CNT4_n;
	output [14:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
	
	reg CNT_valid;
	reg [14:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
	reg [7:0] gray_data_g;
	wire [5:0] enable;

	function [5:0] encoding;
		input [7:0] code;
		begin
			case(code)
			1: encoding = 6'b000001;
			2: encoding = 6'b000010;
			3: encoding = 6'b000100;
			4: encoding = 6'b001000;
			5: encoding = 6'b010000;
			6: encoding = 6'b100000;
			default : encoding = 6'b000000;
			endcase
		end
	endfunction
	
	assign enable = encoding(gray_data_g);
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			gray_data_g <= 0;
		end
		else
		begin
			gray_data_g <= gray_data;
		end
	end
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			CNT1 <= {8'd0,7'b1100000};
		end
		else
		begin
			if(state == finish)
			begin
				CNT1 <= {8'd0,7'b1100000};
			end
			else if(state == count)
			begin
				if(enable[0])
				begin
					CNT1[14:7] <= CNT1[14:7] + 1;
				end
			end
			else if(state == pe)
			begin
				CNT1 <= CNT1_n;
			end
		end
	end
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			CNT2 <= {8'd0,7'b1010000};
		end
		else
		begin
			if(state == finish)
			begin
				CNT2 <= {8'd0,7'b1010000};
			end
			else if(state == count)
			begin
				if(enable[1])
				begin
					CNT2[14:7] <= CNT2[14:7] + 1;
				end
			end
			else if(state == pe)
			begin
				CNT2 <= CNT2_n;
			end
		end
	end
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			CNT3 <= {8'd0,7'b1001000};
		end
		else
		begin
			if(state == finish)
			begin
				CNT3 <= {8'd0,7'b1001000};
			end
			else if(state == count)
			begin
				if(enable[2])
				begin
					CNT3[14:7] <= CNT3[14:7] + 1;
				end
			end
			else if(state == pe)
			begin
				CNT3 <= CNT3_n;
			end
		end
	end
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			CNT4 <= {8'd0,7'b1000100};
		end
		else
		begin
			if(state == finish)
			begin
				CNT4 <= {8'd0,7'b1000100};
			end
			else if(state == count)
			begin
				if(enable[3])
				begin
					CNT4[14:7] <= CNT4[14:7] + 1;
				end
			end
			else if(state == pe)
			begin
				CNT4 <= CNT4_n;
			end
		end
	end
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			CNT5 <= {8'd0,7'b1000010};
		end
		else
		begin
			if(state == finish)
			begin
				CNT5 <= {8'd0,7'b1000010};
			end
			else if(state == count)
			begin
				if(enable[4])
				begin
					CNT5[14:7] <= CNT5[14:7] + 1;
				end
			end
			else if(state == pe)
			begin
				CNT5 <= 15'b111_1111_1000_0000;
			end
		end
	end
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
		begin
			CNT6 <= {8'd0,7'b1000001};
		end
		else
		begin
			if(state == finish)
			begin
				CNT6 <= {8'd0,7'b1000001};
			end
			else if(state == count)
			begin
				if(enable[5])
				begin
					CNT6[14:7] <= CNT6[14:7] + 1;
				end
			end
			else if(state == pe)
			begin
				CNT6 <= {sum,flag};
			end
		end
	end
	
	
endmodule