module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    wire d;
    always@(posedge clk)begin
        d=(L==1)?r_in:q_in;
        Q=d;
    end
endmodule
