module Barrel_shifter_left(
    input [15:0] in_data,  
    input [3:0] shift_amount,  
    output reg [15:0] out_data  
);
    always @(*) begin
     out_data = (in_data << shift_amount) | (in_data >> (16 - shift_amount)); // Left rotate

    end
endmodule
