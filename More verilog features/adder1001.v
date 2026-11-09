module add1(input a, input b, input cin, output cout, output sum ); 
    assign sum =  a ^ b ^ cin; 
    assign cout = (a&b) | (b&cin) | (cin&a); 
    
endmodule 

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    add1 madd(a[0],b[0], cin, cout[0], sum[0] ); 
    
   genvar i;
    generate
        for(i = 1; i < 100; i = i + 1) begin : adder_loop
            add1 madd2(a[i], b[i], cout[i-1], cout[i], sum[i]);
        end
    endgenerate
endmodule