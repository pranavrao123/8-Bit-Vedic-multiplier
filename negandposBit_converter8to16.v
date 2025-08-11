module negandposBit_converter8to16(
    input [7:0] in_data,  
    output [15:0] out_data  
);
    assign out_data = {{8{in_data[7]}}, in_data}; // Sign-extend the MSB
endmodule
