module top_module ( 
    input 		 clk, 
    input  [7:0] d, 
    input  [1:0] sel, 
    output [7:0] q 
);

    wire [7:0] q1, q2, q3;
    
    my_dff8 dff8_1(.clk(clk), .d(d),  .q(q1));
    my_dff8 dff8_2(.clk(clk), .d(q1), .q(q2));
    my_dff8 dff8_3(.clk(clk), .d(q2), .q(q3));
    
    assign q = sel == 0 ? d
        	 : sel == 1 ? q1
        	 : sel == 2 ? q2 : q3;
    
endmodule
