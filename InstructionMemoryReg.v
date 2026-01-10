module IntsrucMem(InstrAddr, reset, Instr);
	input [31:0] InstrAddr;
	input reset;
	output [31:0] Instr;
	//creating the Memory
	reg [31:0] Memory [63:0]; //Memory consists of 64 registers of 32 bits
	integer i;
	assign Instr=Memory[InstrAddr];    
	
	
	always @(posedge reset) begin
		for (i=0;i<64;i=i+1) 
			Memory[i]=32'h00000000;
	end

endmodule
