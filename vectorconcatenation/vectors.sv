module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
    //Confusing vector. Note alignment of bits .i.e position of MSB and LSB 
    assign {w,x,y,z} = { {a, b[4:2]}, {b[1:0],c,d[4]}, {d[3:0],e[4:1]}, {e[0],f,2'b11} };

endmodule