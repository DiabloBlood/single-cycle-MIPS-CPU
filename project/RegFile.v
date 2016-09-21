module RegFile(clock, RegWrite, ReadReg1, ReadReg2, WriteReg, WriteData, ReadData1, ReadData2);

	input clock;
	input RegWrite;
	
	input [4:0] ReadReg1, ReadReg2, WriteReg;
	input [31:0] WriteData;
		
	output [31:0] ReadData1, ReadData2;
	
	reg [31:0] reg_mem [0:31];
	initial begin
		reg_mem[0] <= 0;
		reg_mem[1] <= 8;
		reg_mem[2] <= 20;
	end
	assign ReadData1 = reg_mem[ReadReg1];
	assign ReadData2 = reg_mem[ReadReg2];
	
	always @(posedge clock) begin
		if (RegWrite == 1)
			reg_mem[WriteReg] = WriteData;
	end	
endmodule