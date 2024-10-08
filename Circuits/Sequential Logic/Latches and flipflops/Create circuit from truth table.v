module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    always @(posedge clk)begin
        if(!j && !k) Q<=Q;
        if(!j && k) Q<=0;
        if(j && !k) Q<=1;
        if(j && k) Q<=!Q;
    end
endmodule
