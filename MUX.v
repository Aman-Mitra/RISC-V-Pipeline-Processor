module MUX(input [31:0] A,input [31:0] B, input sel, output reg [31:0] out);
	always @(*) begin
		case (sel) 
			1'b0: out = A;
			1'b1: out = B;
			default out = A;
		endcase		
	end
endmodule
