module Multiplier(
    input signed [7:0] x, y,      // Declare inputs as signed 8-bit
    output signed [15:0] product  // Declare output as signed 16-bit
);
    assign product = x * y;  // Perform signed multiplication
endmodule
