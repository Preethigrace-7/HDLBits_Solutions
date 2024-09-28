module top_module( 
    input [2:0] in,
    output [1:0] out );
    always@(*)
        begin
            out=0;
            for(int i =0;i<3;i=i+1)
                begin
                    if(in[i]==1)
                        out=out+1'd1;
                end
        end
endmodule
