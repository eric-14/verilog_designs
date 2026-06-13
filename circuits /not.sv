`timescale 1ns/1ns`

module not_TB 
    logic in; 
    logic out; 
    logic reset; 

    hello_dut {
        .in(int), 
        .reset(reset), 
        .out(out)
    }; 

    logic [2:0] testVector[100:0]; 

    initial 
        begin 
            $readmemb("TestBenchVector", tectVector); 
        end 


        always
            begin 

            end 


endmodule