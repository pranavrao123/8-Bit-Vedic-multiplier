module Base_selection_module(input [7:0] A,
    output reg [7:0] base
);
    always @(*) begin
        if (A >= 128)
            base = 128;
        else if (A >= 64)
            base = 64;
        else if (A >= 32)
            base = 32;
        else if (A >= 16)
            base = 16;
				else if (A >= 8)
            base = 8;
        else if (A >= 4)
            base = 4;
        else if (A >= 2)
            base = 2;
        else
            base = 1;
    end
endmodule
