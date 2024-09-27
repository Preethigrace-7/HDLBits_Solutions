module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    assign ringer=(ring==1 & vibrate_mode==0)?1:0;
    assign motor=(ring==1 & vibrate_mode==1)?1:0;
endmodule
