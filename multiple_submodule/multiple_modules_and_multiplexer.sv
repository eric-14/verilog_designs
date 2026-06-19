



module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
   	//array storing the value of the d flip flops 
    wire [7:0] d_out[0:2]; 
    my_dff8 flop1(.clk(clk), .d(d), .q(d_out[0])); 
    my_dff8 flop2(.clk(clk), .d(d_out[0]), .q(d_out[1])); 
    my_dff8 flop3(.clk(clk), .d(d_out[1]), .q(d_out[2])); 
    
    always @*
           begin 
            case(sel) 
                2'b00: q = d;
                2'b01: q = d_out[0];
                2'b10: q = d_out[1];  
                2'b11: q = d_out[2];
                
            endcase 
           end 

endmodule