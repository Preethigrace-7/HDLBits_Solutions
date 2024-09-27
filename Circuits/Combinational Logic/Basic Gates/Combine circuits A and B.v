module top_module (input x, input y, output z);
 /*   wire w1,w2,w3,w4,w5,w6;
    add a1(x,y,w1);
    add a2(x,y,w2);
    add a3(x,y,w3);
    add a4(x,y,w4);
    and a5(w5,w3,w4);
    or a6(w6,w1,w2);
    xor a7(z,w5,w6);*/
    wire w1,w2,w3,w4,w5,w6;
    assign w1= (x^y) & x;
    assign w4=~(x^y);
    assign w5= (x^y) & x;
    assign w6=~(x^y);
    assign w2=w4&w1;
    assign w3=w5|w6;
    assign z=w3^w2;
endmodule
/*
module add(input a, input b, output c):
    assign c=a+b;
endmodule*/
