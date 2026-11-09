module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout1, cout2; 
    wire [31:0] result;
    assign result[31:0] = b[31:0] ^ {32{sub}};
   
    add16 instance1(a[15:0],result[15:0], sub, sum[15:0],cout1); 
    add16 instance2(a[31:16],result[31:16], cout1, sum[31:16],cout2); 
endmodule