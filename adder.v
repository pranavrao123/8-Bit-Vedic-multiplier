module adder(
    input signed [15:0] A, B,
    output signed [15:0] result);
    assign result = A + B;
endmodule
