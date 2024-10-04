module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    assign mux_in={c&d,(!c&!d)|(c&!d),1'b0,!(!c&!d)};
endmodule
