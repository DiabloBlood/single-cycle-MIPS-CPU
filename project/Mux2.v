module Mux2 (ALUSrc, ReadData2, Extend32, ALU_B);

	input ALUSrc;
	input [31:0] ReadData2,Extend32;	
	
	output reg [31:0] ALU_B;
	
	always @(ALUSrc, ReadData2, Extend32) begin
		case (ALUSrc)
			0: ALU_B <= ReadData2 ;
			1: ALU_B <= Extend32;
		endcase
	end
endmodule