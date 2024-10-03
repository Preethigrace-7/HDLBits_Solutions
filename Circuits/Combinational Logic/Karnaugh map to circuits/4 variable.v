module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out=(c|~a|~b)&(c|~d|~b)&(a|b|~c|~d)&(~c|d|~a);
endmodule
