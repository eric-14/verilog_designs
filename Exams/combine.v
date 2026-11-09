module top_module (
    input x,
    input y,
    output z
);

    // Submodule equations
    wire out_a = (x ^ y) & x;
    wire out_b = x ~^ y;

    // Combined top-level logic
    assign z = (out_a | out_b) ^ (out_a & out_b);

endmodule