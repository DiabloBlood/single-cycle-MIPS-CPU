module Mux3 (ReadData, ALUOut, MemtoReg, WriteData_Reg);

	input [31:0] ReadData, ALUOut;
	input MemtoReg;	
	
	output reg [31:0] WriteData_Reg;
	
	always @(*) begin
		case (MemtoReg)
			0: WriteData_Reg <= ALUOut ;
			1: WriteData_Reg <= ReadData;
		endcase
	end
endmodule