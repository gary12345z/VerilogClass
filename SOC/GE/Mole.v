`define ADDR_BITS 4
`define SCORE_BITS 10
`define COUNTDOWN_BITS 10
`define WAIT_STATE 3'd0
`define PREPARE_STATE 3'd1
`define PREPARE_COMPARE_STATE 3'd2
`define GAME_STATE 3'd3
`define GAME_COMPARE_STATE 3'd4
module Reg_Cell(D, Q, set, set_D, clk);
	input D, set, set_D, clk;
	output reg Q;
	always@(posedge clk or posedge set)
		Q <= (set)? set_D : D;
endmodule

module Generator(seed, addr, set, clk);
	input[14:0] seed;
	input set, clk;
	output[`ADDR_BITS-1:0] addr;
	wire[15:0] R;
	Reg_Cell Cell[15:0](.D({R[14:0],R[15]^R[14]^R[12]^R[3]}), 
	.Q(R), .set(set), .set_D({seed[14:0],1'b1}), .clk(clk));
	assign addr = {^R[15:12], ^R[11:8], ^R[7:4], ^R[3:0]};
endmodule

module Mole_Cell(good_signal, good_mole, bad_signal, bad_mole, hit_reg, cell_score, enable, game_reset, clk);
	parameter GOOD_SCORE = 10, BAD_SCORE = -5, DELTA = 1, KEEP_TIME = 10;
	input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
	output reg signed[`SCORE_BITS-1:0] cell_score;
	output good_mole, bad_mole;
	wire signed[`SCORE_BITS-1:0] next_cell_score;
	reg [3:0]counter;
	assign good_mole = (cell_score > 0)? 1'b1 : 1'b0; 
	assign bad_mole = (cell_score < 0)? 1'b1 : 1'b0;
	assign next_cell_score = (enable)?(good_signal)? GOOD_SCORE : (bad_signal)? BAD_SCORE : 0 : 
	(hit_reg||counter==0)? 0 : (cell_score > 0)? cell_score - DELTA : cell_score;
	always@(posedge clk or posedge game_reset) begin
		cell_score <= (game_reset)? 0:next_cell_score;
		counter <= (game_reset)? 0:(enable)? KEEP_TIME:(counter==0)? 0:counter-1;
	end
endmodule

module Decoder_4_to_16(addr, enable, signal);
	input[`ADDR_BITS-1:0] addr;
	input enable;
	output reg[15:0] signal;
	always@(*) begin
		signal = 16'b0000_0000_0000_0000;
		if(enable) signal[addr] = 1;
	end
endmodule

module Select_16_to_1(cell_score, hit_reg, add_score);
	input[`SCORE_BITS*16-1:0] cell_score;
	input[15:0] hit_reg;
	output reg[`SCORE_BITS-1:0] add_score;
	wire[`SCORE_BITS-1:0] score [0:15];
	assign {score[15],score[14],score[13],score[12],score[11],score[10],score[9],score[8],
	score[7],score[6],score[5],score[4],score[3],score[2],score[1],score[0]} = cell_score;
	integer i;
	always@(*) begin
		add_score = 0;
		for(i=0;i<16;i=i+1)
			if(hit_reg[i]) add_score = score[i];
	end
endmodule

module Controller(reset, game_start, clk, generator_clk, decoder_enable, reg_enable, game_reset, countdown);
	parameter PREPARE_TIME = 5, GAME_TIME = 30, MOLE_TIME = 10;
	input reset, game_start, clk;
	output reg generator_clk, decoder_enable, reg_enable, game_reset;
	output reg[`COUNTDOWN_BITS-1:0] countdown;
	reg[`COUNTDOWN_BITS-1:0] next_countdown;
	reg[3:0] counter, next_counter;
	reg[2:0] state, next_state;
	always@(posedge clk or posedge reset) begin
		if(reset) begin
			countdown <= `WAIT_STATE;
			counter <= 0;
			state <= 0;
		end
		else begin
			countdown <= next_countdown;
			counter <= next_counter;
			state <= next_state;
		end
	end
	always@(*) begin
		case(state)
			`WAIT_STATE: begin 
			generator_clk = 0; 
			decoder_enable = 0; 
			reg_enable = 0; 
			game_reset = 0;
			next_countdown = PREPARE_TIME; 
			next_counter = 0; 
			next_state =(game_start)? `PREPARE_STATE:`WAIT_STATE; 
			end
			`PREPARE_STATE: begin 
			generator_clk = 0; 
			decoder_enable = 0; 
			reg_enable = 0; 
			game_reset = 1;
			next_countdown = countdown; 
			next_counter = counter + 1; 
			next_state =(counter == 8)? `PREPARE_COMPARE_STATE:`PREPARE_STATE; 
			end
			`PREPARE_COMPARE_STATE: begin 
			generator_clk = 1; 
			decoder_enable = 0; 
			reg_enable = 0; 
			game_reset = 0;
			next_countdown = countdown? countdown - 1:GAME_TIME; 
			next_counter = 0; 
			next_state = countdown? `PREPARE_STATE:`GAME_STATE; 
			end
			`GAME_STATE: begin 
			generator_clk = 0; 
			decoder_enable = 1; 
			reg_enable = 0; 
			game_reset = 0;
			next_countdown = countdown; 
			next_counter = counter + 1; 
			next_state =(counter == MOLE_TIME - 2)? `GAME_COMPARE_STATE:`GAME_STATE; 
			end
			`GAME_COMPARE_STATE: begin 
			generator_clk = 1; 
			decoder_enable = 1; 
			reg_enable = 1; 
			game_reset = 0;
			next_countdown = countdown? countdown - 1:5'd0; 
			next_counter = 0; 
			next_state = countdown? `GAME_STATE:`WAIT_STATE; 
			end
			default: begin 
			generator_clk = 1'bx; 
			decoder_enable = 1'bx; 
			reg_enable = 1'bx; 
			game_reset = 1'bx;
			next_countdown = `COUNTDOWN_BITS 'bx; 
			next_counter = 4'bx; 
			next_state = 3'bx; 
			end
		endcase
	end
endmodule

module Mole(Game_start, Reset, Clk, Seed, Hit_point, Countdown, Score, Good_mole, Bad_mole);
	input[29:0] Seed;
	input[15:0] Hit_point;
	input Game_start, Reset, Clk;
	output[15:0] Good_mole, Bad_mole;
	output reg signed[`SCORE_BITS-1:0] Score;
	output[`COUNTDOWN_BITS-1:0] Countdown;
	wire[`SCORE_BITS*16-1:0] cell_score;
	wire[15:0] good_signal, bad_signal;
	wire signed[`SCORE_BITS-1:0] add_score;
	wire[`ADDR_BITS-1:0] good_addr, bad_addr;
	wire generator_clk, decoder_enable, reg_enable, game_reset;
	Generator Good_Addr(.seed(Seed[29:15]), .addr(good_addr), .set(Reset), .clk(generator_clk)),
	Bad_Addr(.seed(Seed[14:0]), .addr(bad_addr), .set(Reset), .clk(generator_clk));
	
	Decoder_4_to_16 Good(.addr(good_addr), .enable(decoder_enable), .signal(good_signal)),
	Bad(.addr(bad_addr), .enable(decoder_enable), .signal(bad_signal));
	
	Mole_Cell M[15:0](.good_signal(good_signal), .good_mole(Good_mole), .bad_signal(bad_signal), .bad_mole(Bad_mole), 
	.hit_reg(Hit_point), .cell_score(cell_score), .enable(reg_enable), .game_reset(game_reset), .clk(Clk));
	
	Select_16_to_1 Select(.cell_score(cell_score), .hit_reg(Hit_point), .add_score(add_score));
	
	Controller Control(.reset(Reset), .game_start(Game_start), .clk(Clk), .generator_clk(generator_clk),
	.decoder_enable(decoder_enable), .reg_enable(reg_enable), .game_reset(game_reset), .countdown(Countdown));
	
	always@(posedge Clk or posedge game_reset)
		if(game_reset)
			Score <= 0;
		else
			Score <= (Score + add_score < 0)? 0:Score + add_score;
endmodule
