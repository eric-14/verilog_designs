module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin = 1'b0;
    
    
    
    wire cout; 
    add16 add_lower(a[15:0], b[15:0],cin, sum[15:0], cout); 
    
    wire cin0 = 1'b0; 
    wire cout0; 
    wire [15:0]temp0; 
    add16 add_upper0(a[31:16], b[31:16],cin0, temp0[15:0], cout0); 
    
    wire cin1 = 1'b1;
    wire cout1; 
    wire [15:0]temp1; 
    add16 add_upper1(a[31:16], b[31:16],cin1, temp1[15:0], cout1); 
    
    always @* begin 
            case(cout) 
                1'b0 : sum[31:16] = temp0[15:0]; 
                1'b1 : sum[31:16] = temp1[15:0]; 
            endcase
        end 
    
    
    
endmodule