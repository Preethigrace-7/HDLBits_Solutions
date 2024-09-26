module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
   // wire [15:0] w;
    wire cout;
    
    // Instantiate 16 add1 modules for the lower 16 bits
   /* add1 ad1 (a[0], b[0], , sum[0], w[0]);
    add1 ad2 (a[1], b[1], w[0], sum[1], w[1]);
    add1 ad3 (a[2], b[2], w[1], sum[2], w[2]);
    add1 ad4 (a[3], b[3], w[2], sum[3], w[3]);
    add1 ad5 (a[4], b[4], w[3], sum[4], w[4]);
    add1 ad6 (a[5], b[5], w[4], sum[5], w[5]);
    add1 ad7 (a[6], b[6], w[5], sum[6], w[6]);
    add1 ad8 (a[7], b[7], w[6], sum[7], w[7]);
    add1 ad9 (a[8], b[8], w[7], sum[8], w[8]);
    add1 ad10 (a[9], b[9], w[8], sum[9], w[9]);
    add1 ad11 (a[10], b[10], w[9], sum[10], w[10]);
    add1 ad12 (a[11], b[11], w[10], sum[11], w[11]);
    add1 ad13 (a[12], b[12], w[11], sum[12], w[12]);
    add1 ad14 (a[13], b[13], w[12], sum[13], w[13]);
    add1 ad15 (a[14], b[14], w[13], sum[14], w[14]);
    add1 ad16 (a[15], b[15], w[14], sum[15], w[15]);*/

    // Use add16 for the upper 16 bits only
    add16 adder1(a[15:0], b[15:0],, sum[15:0], cout);
    add16 adder2(a[31:16], b[31:16],cout, sum[31:16],);
endmodule

// Full Adder Module
module add1 (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;  // Corrected sum calculation (XOR)
    assign cout = (a & b) | (b & cin) | (cin & a);  // Corrected carry-out calculation
endmodule

// 16-bit adder module for the upper 16 bits
