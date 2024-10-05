module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire a,b;
    always@(posedge clk)begin
        a=E?w:Q;
        b=L?R:a;
        Q=b;
    end
endmodule
