module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout;
    wire [15:0]s1,s2;
    add16 a1( a[15:0], b[15:0], , sum[15:0], cout );
    add16 a2( a[31:16], b[31:16],0 , s1,);
    add16 a3( a[31:16], b[31:16],1 , s2,);
    always @(*) 
        begin
        case(cout)
            
                1'b0:sum[31:16]=s1;
                1'b1:sum[31:16]=s2;
                default : sum[31:16]=15'h0;
          
        endcase
    end
endmodule
