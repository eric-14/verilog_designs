module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin = 1'b0; 
    wire cout; 
    wire cout_ignore = 1'b0; 
    add16 add_lower(a[15:0], b[15:0], cin, sum[15:0], cout); 
 
    add16 add_upper(a[31:16], b[31:16],cout, sum[31:16],cout_ignore); 
   

endmodule
