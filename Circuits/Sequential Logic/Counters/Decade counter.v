module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    always@(posedge clk)begin
        if(reset || q==4'b1001)begin
            q=0;
        end
        else
            q<=q+1;
    end
endmodule