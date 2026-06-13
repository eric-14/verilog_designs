module predefined_gates(output logic[5:0] y_out, input a_in, b_in); 

    and u1(y_out[0], a_in, b_in); 
    nand u2(y_out[1], a_in, b_in); 
    or u3(y_out[2], a_in, b_in); 
    nor u4(y_out[3], a_in, b_in); 
    xor u5(y_out[4], a_in, b_in); 
    xnor u6(y_out[5], a_in, b_in);
endmodule

module structural_design( output y_out, input sel_in,a_in, b_in);
    logic tmp_1,tmp_2,tmp_3;
    and u1 (tmp_2, sel_in,a_in);
    and u2 (tmp_3, tmp_1,b_in);
    not u3 (tmp_1, sel_in);
    or u4 (y_out, tmp_2,tmp_3);
endmodule

logic [7:0] a_in,b_in,c_in;
//8 -bit signed representation with logic net type
logic signed [7:0] d_in;
//assigning binary value 1100 to net
assign e_in = 4’b1100;
//assigning hexadecimal value 1110 to net
assign f_in = 4’hE;
//assigning decimal value 3 to net, and it is equivalent to 0011
assign g_in = 3;

//assigning decimal value -2 to net, and it is equivalent to 1100
assign h_in =-2;
//Part select from the 4 -bit binary number that is x_in = 10
assign x_in = e_in [2:1];
//String concatenate the result is 1100_1110
assign y_in = {e_in, f_in};