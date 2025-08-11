module Barrel_shifter_rotate_left(
 input signed [15:0] in_data,  
   input [3:0] shift_amount,  
   output reg [15:0] out_data  
);
   always @(*) begin
    if(in_data < 0) begin 
           out_data = (in_data << shift_amount);
               end
               else begin
               out_data = (in_data << shift_amount) | (in_data >> (16 - shift_amount));
               end            
    end
endmodule
