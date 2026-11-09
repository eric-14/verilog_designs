module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum
);

    // Create a 101-bit wire array to handle internal carry chaining.
    // cout_wire[0] is connected to the initial cin.
    // cout_wire[100] will be the final cout.
    wire [100:0] cout_wire;
    assign cout_wire[0] = cin;
    assign cout = cout_wire[100];

    // Use a generate block to instantiate 100 instances of bcd_fadd
    genvar i;
    generate
        for (i = 0; i < 100; i = i + 1) begin: bcd_adder_instances
            bcd_fadd i_bcd_fadd (
                .a(a[4*i +: 4]),          // Selects 4 bits starting from index 4*i
                .b(b[4*i +: 4]),          // e.g., for i=0: a[3:0], i=1: a[7:4]
                .cin(cout_wire[i]),       // Carry-in from the previous digit
                .cout(cout_wire[i+1]),    // Carry-out to the next digit
                .sum(sum[4*i +: 4])       // 4-bit BCD sum output
            );
        end
    endgenerate

endmodule