module Bit_converter8to16(
    input [7:0] in_data,  
    output [15:0] out_data  
);
    assign out_data = {8'b00000000, in_data}; // Zero extension
endmodule
