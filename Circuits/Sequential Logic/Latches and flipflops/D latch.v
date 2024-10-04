module top_module (
    input d, 
    input ena,
    output q);
    always@(d)
        begin
            if(ena)
            q<=d;
        end
endmodule
