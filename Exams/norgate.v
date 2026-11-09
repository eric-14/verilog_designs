module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire norgate; 
    assign norgate = in1 ^ in2; 
    assign out = ~norgate ^ in3; 
endmodule