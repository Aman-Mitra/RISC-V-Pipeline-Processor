module Data_Memory(clk,reset,Address, WrdataM, MemRead, MemWrite, ReadDataM);
	input clk,reset;
	input [31:0] Address,WrdataM;
	input MemRead,MemWrite;
	output reg [31:0] ReadDataM;
	integer k;
	reg [31:0] DataMemory [63:0];		//Creating a 32 bit Data Memory Register of size 32 registers 
	assign readDataM = (MemRead)? DataMemory[Address]:32'h0;	//when control signal = MemRead, then read data from address
	
	always @(posedge clk) begin 
		if (reset) begin
			for (k=0;k<64;k=k+1) DataMemory[k]=32'h0;
		end
		else if (MemWrite) begin 
			DataMemory[Address]=WrdataM;	//when control signal = MemRead, then read data from address
		end
	end

endmodule
