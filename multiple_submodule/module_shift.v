module top_module ( input clk, input d, output q );
    wire out_dff1;
    wire out_dff2; 

    
    my_dff dff1(.clk(clk), .d(d), .q(out_dff1)); 
    my_dff dff2(.clk(clk), .d(out_dff1), .q(out_dff2)); 
    my_dff dff3(.clk(clk), .d(out_dff2), .q(q)); 
endmodule


module top_module (
	input clk,
	input d,
	output q
);

	wire a, b;	// Create two wires. I called them a and b.

	// Create three instances of my_dff, with three different instance names (d1, d2, and d3).
	// Connect ports by position: ( input clk, input d, output q)
	my_dff d1 ( clk, d, a );
	my_dff d2 ( clk, a, b );
	my_dff d3 ( clk, b, q );

endmodule