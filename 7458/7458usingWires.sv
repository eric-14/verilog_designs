module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
     wire and2a; 
     wire and2c; 
     wire andp1c; 
     wire andp1e; 
    // 7428 using continuous circuits 
    assign and2a = (p2a & p2b);
    assign and2c = (p2c & p2d); 
    
    assign andp1c = (p1c & p1b & p1a);  
    assign andp1e = (p1e & p1f & p1d);
    
    assign p2y = and2a | and2c; 
    assign p1y = andp1c | andp1e;  


endmodule