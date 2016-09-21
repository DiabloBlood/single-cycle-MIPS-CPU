module Add_ALU(PCout, ShiftOut, Add_ALUOut);

	input [31:0] PCout;
	input [31:0] ShiftOut;
	
	output reg [31:0] Add_ALUOut;

	always @(*) begin
		Add_ALUOut <= PCout + ShiftOut;
	end
endmodule