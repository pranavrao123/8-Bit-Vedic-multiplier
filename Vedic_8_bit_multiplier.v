module Vedic_8_bit_multiplier(input [7:0] A, B, output [15:0] final_result);
	wire [7:0] BSM1,BSM2,SUB1,SUB2;
    wire [3:0] PID1,PID2,SUB3;
    wire [15:0] BC1,BC2,ADD2,MUL,BS2,BS1,ADD1;
	Base_selection_module bsm1(A,BSM1);
    Base_selection_module bsm2(B,BSM2);
	Subtractor sub1(A,BSM1,SUB1);
    Subtractor sub2(B,BSM2,SUB2);	
    Bit_converter8to16 bc1(A,BC1);
	Power_index_determinant pid1(BSM1,PID1);
	Power_index_determinant pid2(BSM2,PID2);
	Multiplier mul(SUB1,SUB2,MUL);
	Subtractor_4bit sub3(PID1,PID2,SUB3);
	negandposBit_converter8to16 bc2(SUB2,BC2);
	Barrel_shifter_rotate_left bs1(BC2,SUB3,BS1);
	 Barrel_shifter_left bs2(ADD1,PID2,BS2);
	adder add1(BC1,BS1,ADD1);
	adder add2(MUL,BS2,final_result);
endmodule
