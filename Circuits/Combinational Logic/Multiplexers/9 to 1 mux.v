module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    always@(*) begin
        case(sel)
            4'd0:out=a;
            4'd1:out=b;
            4'd2:out=c;
            4'd3:out=d;
            4'd4:out=e;
            4'd5:out=f;
            4'd6:out=g;
            4'd7:out=h;
            4'd8:out=i;
            4'd9:out=16'd65535;
            4'd10:out=16'd65535;
            4'd11:out=16'd65535;
            4'd12:out=16'd65535;
            4'd13:out=16'd65535;
            4'd14:out=16'd65535;
            4'd15:out=16'd65535;
            default: out=16'd65535;
        endcase
    end
endmodule
