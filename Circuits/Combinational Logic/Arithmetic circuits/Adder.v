module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [2:0]c;
    add a1(x[0],y[0],,c[0],sum[0]);
    add a2(x[1],y[1],c[0],c[1],sum[1]);
    add a3(x[2],y[2],c[1],c[2],sum[2]);
    add a4(x[3],y[3],c[2],sum[4],sum[3]);
    
    
endmodule
module add(a,b,c,cout,s);
    input a,b,c;
    output cout,s;
    assign {cout,s}=a+b+c;
endmodule
