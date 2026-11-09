module top_module (
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different
);

    // out_both[2] = in[2] & in[3], out_both[1] = in[1] & in[2], out_both[0] = in[0] & in[1]
    assign out_both = in[2:0] & in[3:1];

    // out_any[3] = in[3] | in[2], out_any[2] = in[2] | in[1], out_any[1] = in[1] | in[0]
    assign out_any  = in[3:1] | in[2:0];

    // out_different compares each bit to its left neighbor with a bitwise XOR (^)
    // Wrapping around: in[3]'s left neighbor is in[0], so we concatenate {in[0], in[3:1]}
    assign out_different = in ^ {in[0], in[3:1]};

endmodule