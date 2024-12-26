module top_module(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum
);

    wire lo_add16_cout;
    
    add16 hi_add16(.a(a[31:16]), .b(b[31:16]), .cin(lo_add16_cout), .sum(sum[31:16])                      );
    add16 ho_add16(.a(a[15: 0]), .b(b[15: 0]), .cin(            0), .sum(sum[15: 0]), .cout(lo_add16_cout));
    
endmodule
