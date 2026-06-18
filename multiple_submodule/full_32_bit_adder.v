module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire cin = 1'b0; 
    wire [15:0]cout12; 
    wire [15:0]cout13; 
    add161 add_lower(a[15:0], b[15:0], cin, sum[15:0],cout12);
    add161 add_upper(a[31:16], b[31:16], cout12[15], sum[31:16],cout13);
	
endmodule



module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    //assign {cout, sum } = a + b + cin; 
    
    assign sum = a ^ b ^ cin;
	assign cout = a&b | a&cin | b&cin;

endmodule

module add161(input [15:0]a, input [15:0]b, input cin, output [15:0]sum, output [15:0]cout1); 
  //  wire cin1 = 1'b0; 
    //wire cout1[16:0]; 
    add1 addv1(a[0], b[0], cin, sum[0], cout1[0]); 
    add1 addv2(a[1], b[1], cout1[0], sum[1], cout1[1]); 
    add1 addv3(a[2], b[2], cout1[1], sum[2], cout1[2]); 
    add1 addv4(a[3], b[3], cout1[2], sum[3], cout1[3]); 
    
    add1 addv5(a[4], b[4], cout1[3], sum[4], cout1[4]); 
    add1 addv6(a[5], b[5], cout1[4], sum[5], cout1[5]); 
    add1 addv7(a[6], b[6], cout1[5], sum[6], cout1[6]); 
    add1 addv8(a[7], b[7], cout1[6], sum[7], cout1[7]); 
    
    add1 addv9(a[8], b[8], cout1[7], sum[8], cout1[8]); 
    add1 addv10(a[9], b[9], cout1[8], sum[9], cout1[9]); 
    add1 addv11(a[10], b[10], cout1[9], sum[10], cout1[10]); 
    add1 addv12(a[11], b[11], cout1[10], sum[11], cout1[11]); 
    
    add1 addv13(a[12], b[12], cout1[11], sum[12], cout1[12]); 
    add1 addv14(a[13], b[13], cout1[12], sum[13], cout1[13]); 
    add1 addv15(a[14], b[14], cout1[13], sum[14], cout1[14]); 
    add1 addv16(a[15], b[15], cout1[14], sum[15], cout1[15]); 
    
endmodule