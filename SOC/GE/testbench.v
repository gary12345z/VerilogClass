//Please enter which module you want to test:
`define Mole 
//Please enter the name of the wave file:
`define DUMPFILENAME "syn.fsdb"
//SYN
`define SYN

`timescale 10ns/100ps
module test();
	reg Clk, Set;
	//clock
	initial Clk = 0;
	always #0.5 Clk = ~Clk;
	//set
	initial begin 
	Set = 0; #5;
	Set = 1; #5;
	Set = 0;
	end
	initial begin 
	#100000; $finish; 
	end
	
`ifdef Generator // Generator
	reg[14:0] seed;
	wire[3:0] addr;
	integer i, count[15:0];
	Generator U0(seed, addr, Set, Clk);
	always@(addr) count[addr] = count[addr]+1;
	initial begin
		for(i = 0; i < 16; i = i+1)
			count[i]=0;
		seed = $random; 
		#1000000; 
		for(i = 0; i < 16; i = i+1)
			$display("count[%d] = %d",i , count[i]);
		$finish;
	end
	initial
		$monitor("addr = %d(%b)",addr,addr);
`endif
	
`ifdef Mole_Cell // Mole_Cell
	reg good_signal, bad_signal, enable, hit_reg;
	wire signed[9:0] cell_score;
	wire good_mole, Bad_mole;
	Mole_Cell U1(good_signal, good_mole, bad_signal, bad_mole, hit_reg, cell_score, enable, Set, Clk);
	initial begin 
		enable = 1;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #5;
		good_signal = 1; bad_signal = 0; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #40;
		good_signal = 0; bad_signal = 1; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #40;
		good_signal = 1; bad_signal = 0; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #10;hit_reg = 1; #5; hit_reg = 0; #35; 
		good_signal = 0; bad_signal = 1; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #10; hit_reg = 1; #5; hit_reg = 0; #35; 
		enable = 0;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #5;
		good_signal = 1; bad_signal = 0; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #40;
		good_signal = 0; bad_signal = 1; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #40;
		good_signal = 1; bad_signal = 0; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #10;hit_reg = 1; #5; hit_reg = 0; #35; 
		good_signal = 0; bad_signal = 1; hit_reg = 0; #2;
		good_signal = 0; bad_signal = 0; hit_reg = 0; #10; hit_reg = 1; #5; hit_reg = 0; #35; 
		$finish;
	end
	initial
		$monitor("(%d,%d) %d ... %d",good_mole,bad_mole,cell_score, hit_reg);
`endif
	
`ifdef Decoder_4_to_16 // Decoder_4_to_16
	reg[3:0] addr;
	reg enable;
	wire[15:0] signal;
	integer i;
	Decoder_4_to_16 U2(addr, enable, signal);
	initial begin 
		enable = 1;
		for(i = 0; i < 16; i = i + 1) #5 addr = i;
		#5 enable = 0;
		for(i = 0; i < 16; i = i + 1) #5 addr = i;
	end
	initial
		$monitor("(%d)%b",addr,signal);
`endif
	
`ifdef Select_16_to_1 // Select_16_to_1
	reg[159:0] cell_score;
	reg [15:0] hit_reg;
	wire [9:0] add_score;
	integer i;
	Select_16_to_1 U3(cell_score, hit_reg, add_score);
	initial begin 
		cell_score = $random;
		$display("cell_score = %b",cell_score);
		hit_reg = 16'b0000_0000_0000_0000; #5;
		for (i=0;i<16;i=i+1) begin
			hit_reg = 16'b0000_0000_0000_0000;
			hit_reg[i]=1;
			#5;
		end
		$finish;
	end
	initial
		$monitor("%d(%b)",add_score,add_score);
`endif	

`ifdef Controller // Controller
	reg game_start;
	wire generator_clk, decoder_enable, reg_enable;
	wire[4:0] countdown;
	Controller U4(Set, game_start, Clk, generator_clk, decoder_enable, reg_enable, game_reset, countdown);
	initial begin
		game_start = 1;
		#15;
		game_start = 0;
		#1000; $finish;
	end
	initial
		$monitor($time, "(%b,%b,%b) %d",generator_clk, decoder_enable, reg_enable, countdown);
`endif

`ifdef Mole // Mole total
	reg[29:0] Seed;
	reg[15:0] Hit_point;
	reg Game_start;
	wire[15:0] Good_mole, Bad_mole;
	wire[9:0] Score;
	wire[4:0] Countdown;
	integer i, j, r;
	Mole U5(Game_start, Set, Clk, Seed, Hit_point, Countdown, Score, Good_mole, Bad_mole);
	initial begin
		Seed = 123456789;
		Hit_point = 0;
		Game_start = 0;
		#10 Game_start = 1;
		$display("- Game Start");
		#5 Game_start = 0;
		wait(Good_mole)
		$display("- Go");
		for(i=0; i<30; i=i+1) begin
			r = $random%2;
			#2 Hit_point = (r)? Good_mole : Bad_mole;
			#1 Hit_point = 0;
			#7;
			end
		$display("- Game End");
		#1000 Game_start = 1;
		$display("- Game Start");
		#5 Game_start = 0;
		wait(Good_mole)
		$display("- Go");
		for(i=0; i<30; i=i+1)
			#300;
		$display("- Game End"); #1000 $finish;
	end
	initial
		$monitor("@%.2f sec\n\tG:(%b)\n\tB:(%b)\n\t(%d,%d)", $realtime/10, Good_mole, Bad_mole, Countdown, Score);
`endif

`ifdef DUMPFILENAME
	//
	initial begin
		$dumpfile(`DUMPFILENAME);
		$dumpvars;
	end
`endif

`ifdef SYN
	initial	$sdf_annotate("mole_syn.sdf",U5);
`endif
endmodule
