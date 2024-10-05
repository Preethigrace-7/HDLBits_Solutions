module top_module (
    input clk,
    input in, 
    output out);
    wire d;
    always@(posedge clk)
        begin
            d=in^out;
            out=d;
        end
endmodule
