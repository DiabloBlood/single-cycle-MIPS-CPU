module PC(clock, reset, PCin, PCout);

	input clock, reset;
	input [31:0] PCin;
	
	output reg [31:0] PCout;
	
	always @(posedge clock) begin
		if (reset == 1) 
			PCout <= 0;
		else 
			PCout <= PCin + 4; 
	end
endmodule