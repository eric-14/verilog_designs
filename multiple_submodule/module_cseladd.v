module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]outInstance2; 
    wire [15:0]outInstance3; 
    wire coutInstance1, cout2 ; 
    add16 instance1(a[15:0],b[15:0],0, sum[15:0], coutInstance1);
    
    add16 instance2(a[31:16],b[31:16],0,outInstance2[15:0], cout2);
    add16 instance3(a[31:16],b[31:16], 1,outInstance3[15:0],cout2);
    
    always @(cout, outInstance2, outInstance3) 
        begin 
            case(coutInstance1)
                1'b0 : sum[31:16] = outInstance2; 
                1'b1: sum[31:16] = outInstance3; 
            endcase
        end
    
endmodule