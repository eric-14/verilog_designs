moduld mux_2to1(
    input wire a_int, b_in,sel_in, 
    output reg y_out
); 
    always@* 
    begin 
        if(sel_in)
            y_out = b_in; 
        else 
            y_out = a_in; 
    end 

endmodule