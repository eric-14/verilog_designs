module top_module (
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different
);

    // out_both: Compare each bit with its left neighbor (higher index)
    // in[98:0] matches up with in[99:1]
    assign out_both = in[98:0] & in[99:1];

    // out_any: Compare each bit with its right neighbor (lower index)
    // in[99:1] matches up with in[98:0]
    assign out_any = in[99:1] | in[98:0];

    // out_different: Compare each bit with its left neighbor with wrap-around
    // The left neighbor of in[99] is in[0], so the shifted vector becomes {in[0], in[99:1]}
    assign out_different = in ^ {in[0], in[99:1]};

endmodule