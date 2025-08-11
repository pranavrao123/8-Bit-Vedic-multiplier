module Power_index_determinant(
    input [7:0] base,
    output reg [3:0] power_index
);
    always @(*) begin
        case (base)
            8'b10000000: power_index = 7;
            8'b01000000: power_index = 6;
            8'b00100000: power_index = 5;
            8'b00010000: power_index = 4;
            8'b00001000: power_index = 3;
            8'b00000100: power_index = 2;
            8'b00000010: power_index = 1;
            default: power_index = 0;
        endcase
    end
endmodule
