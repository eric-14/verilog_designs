module gnd_nor(input in1, input in2, output out); 

    assign out = ~(in1 | in2); 
end_module