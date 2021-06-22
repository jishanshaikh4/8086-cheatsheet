# ORG 2000H
MVI	C,00		    // Clear reg.C
MVI	D,00		    // Clear reg.D
MVI	A,F0		    // Take number into Accumulator
MVI	B,08		    // Counter 8 loaded in reg.B
up:RLC		    // Rotate left through carry
JNC	down	    // Jump if CF=0
INR	D		    // D+1=>D for 1’s counter
JMP	shift	    // Unconditional Jump
down:INR	C	      // C+1=> C for 0’s counter
shift:DCR	B	    // B-1=> B
JNZ	up	    // True until B=0
RST 1			      // Terminate
