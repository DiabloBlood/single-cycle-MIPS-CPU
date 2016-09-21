module InstMem(clock, address, inst);

	input clock;
	input [31:0] address;
	
	output reg [31:0]	inst;
	
	reg [31:0] Mem [0:127];
	
	initial begin
		$readmemh("Instruction.txt", Mem, 0, 5);
	end
	
	always @( posedge clock) begin
		inst <= Mem[address[31:2]];
	end
endmodule