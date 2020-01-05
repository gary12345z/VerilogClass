`timescale 1ns/100ps 

module encoder (HD1,HD2,HD3,HD4,HD5,HD6,HC1,HC2,HC3,HC4,HC5,HC6,M1,M2,M3,M4,M5,M6,data_s,data_l,HC1_n,HC2_n,HC3_n,HC4_n,HC5_n,HC6_n,M1_n,M2_n,M3_n,M4_n,M5_n,M6_n);

//============================================in,out===============================//

	input [14:0]HD1;
	input [14:0]HD2;
	input [14:0]HD3;
	input [14:0]HD4;
	input [14:0]HD5;
	input [14:0]HD6;
	
	input [7:0]HC1;
	input [7:0]HC2;
	input [7:0]HC3;
	input [7:0]HC4;
	input [7:0]HC5;
	input [7:0]HC6;
	
	input [7:0]M1;
	input [7:0]M2;
	input [7:0]M3;
	input [7:0]M4;
	input [7:0]M5;
	input [7:0]M6;
	
	input [14:0]data_l;
	input [14:0]data_s;
	
	
	output [7:0]HC1_n;
	output [7:0]HC2_n;
	output [7:0]HC3_n;
	output [7:0]HC4_n;
	output [7:0]HC5_n;
	output [7:0]HC6_n;
	
	output [7:0]M1_n;
	output [7:0]M2_n;
	output [7:0]M3_n;
	output [7:0]M4_n;
	output [7:0]M5_n;
	output [7:0]M6_n;
	
	
	
//=======================================reg======================================//
	
	reg [7:0]M1_n;
	reg [7:0]M2_n;
	reg [7:0]M3_n;
	reg [7:0]M4_n;
	reg [7:0]M5_n;
	reg [7:0]M6_n;
	
	reg [7:0]HC1_n;
	reg [7:0]HC2_n;
	reg [7:0]HC3_n;
	reg [7:0]HC4_n;
	reg [7:0]HC5_n;
	reg [7:0]HC6_n;
	

//=======================================seq======================================//

//==================================comb==============================================//

	always @ (*)
	begin
			if(data_l==HD1)  //cmp A1
			begin
				HC1_n={HC1[6:0],1'b0};
				M1_n={M1[6:0],1'b1};
			end
			else if(data_s==HD1)
			begin
				HC1_n={HC1[6:0],1'b1};
				M1_n={M1[6:0],1'b1};
			end
			else
			begin
				HC1_n=HC1;
				M1_n=M1;
			end
			
			if(data_l==HD2) //cmp A2
			begin
				HC2_n={HC2[6:0],1'b0};
				M2_n={M2[6:0],1'b1};
			end
			else if(data_s==HD2)
			begin
				HC2_n={HC2[6:0],1'b1};
				M2_n={M2[6:0],1'b1};
			end
			else
			begin
				HC2_n=HC2;
				M2_n=M2;
			end
			
			if(data_l==HD3) //cmp A3
			begin
				HC3_n={HC3[6:0],1'b0};
				M3_n={M3[6:0],1'b1};
			end
			else if(data_s==HD3)
			begin
				HC3_n={HC3[6:0],1'b1};
				M3_n={M3[6:0],1'b1};
			end
			else
			begin
				HC3_n=HC3;
				M3_n=M3;
			end
			
			if(data_l==HD4) //cmp A4
			begin
				HC4_n={HC4[6:0],1'b0};
				M4_n={M4[6:0],1'b1};
			end
			else if(data_s==HD4)
			begin
				HC4_n={HC4[6:0],1'b1};
				M4_n={M4[6:0],1'b1};
			end
			else
			begin
				HC4_n=HC4;
				M4_n=M4;
			end
			
			if(data_l==HD5) //cmp A5
			begin
				HC5_n={HC5[6:0],1'b0};
				M5_n={M5[6:0],1'b1};
			end
			else if(data_s==HD5)
			begin
				HC5_n={HC5[6:0],1'b1};
				M5_n={M5[6:0],1'b1};
			end
			else
			begin
				HC5_n=HC5;
				M5_n=M5;
			end
			
			if(data_l==HD6) //cmp A6
			begin
				HC6_n={HC6[6:0],1'b0};
				M6_n={M6[6:0],1'b1};
			end
			else if(data_s==HD6)
			begin
				HC6_n={HC6[6:0],1'b1};
				M6_n={M6[6:0],1'b1};
			end
			else
			begin
				HC6_n=HC6;
				M6_n=M6;
			end
	end
endmodule