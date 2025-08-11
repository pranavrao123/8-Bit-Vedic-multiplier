module Subtractor_4bit(
    input [3:0] A, B,
    output [3:0] result
);
    assign result = A - B;
endmodule
