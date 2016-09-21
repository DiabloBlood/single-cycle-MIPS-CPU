module DataMemory (clock, address, MemWrite, MemRead, WriteData, ReadData);

	input clock;
	input [6:0] address;
	input MemWrite, MemRead;
	input [31:0] WriteData; 
	
	output reg [31:0] ReadData;

	reg [31:0] Mem[0:127]; //32 bits memory with 128 entries

	initial begin
		Mem[0] = 5;
		Mem[1] = 6;
		Mem[2] = 7;
	end
	
	always @ (posedge clock) begin
	
		if (MemWrite == 1)
			Mem[address[6:2]] <= WriteData;
	end
	
	always @(negedge clock) begin
		if (MemRead == 1)
			ReadData <= Mem[address[6:2]];
	end	
endmodule








