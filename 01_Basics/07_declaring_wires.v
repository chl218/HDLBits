`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire ab_wire, cd_wire;
    
    assign ab_wire = a & b;
    assign cd_wire = c & d;
    
    assign out = ab_wire | cd_wire;
    assign out_n = ~(ab_wire | cd_wire);
    
endmodule