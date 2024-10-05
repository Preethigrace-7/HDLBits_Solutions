module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset
    output q);
    always@(posedge clk)begin
        if(!r)
            q<=d;
        else
            q<=0;
    end
endmodule
