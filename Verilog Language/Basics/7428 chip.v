module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	wire w,x,y,z;
//    assign w= p1a&&p1b&&p1c;
    and a1(w,p1a,p1c,p1b);
    //assign x=p2a&p2b;
    and a2(x,p2a,p2b);
    //assign y=p1f&&p1e&&p1d;
    and a3(y,p1f,p1e,p1d);
    //assign z=p2c&p2d;
    and a4(z,p2c,p2d);
    //assign p1y=w|z;
    or o2(p1y,w,y);
    //assign p2y=x|y;
    or o1(p2y,x,z);

    

endmodule
