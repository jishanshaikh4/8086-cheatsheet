# ORG 2000H
LDA	F100	         // Load count from F100 to Acc.
DCR	A	         // Decrement A by 1
MOV	C,A	         // A=>C
MOV	B,C	         // C=>B
LXI	H,F200         // HL <= F200
up:MOV	A,M	         // [HL] =>A
INX	H	         // HL+1=>HL
CMP	M	       // Compare reg. M to A
JC	down            // If A< M jump condition is true
MOV	D,M            // M=> D
MOV	M,A	        // A=>M
DCX	H	        // HL-1 => Hl
MOV	M,D	        // D<=M
INX	H	        // HL+1=>HL
down:DCR	B	        // Decrement b by 1
JNZ	up	        // Jump until B=0
DCR	C	        // Decrement C by 1
JNZ	2005	        // Jump until C=0
RST 1	                    // Terminate

# ORG F100H                         // Store number count at the address
# DB 04                                   // Store Count
#ORG F200H                          // Store numbers at the address
#DB DD,CC,BB,AA              // Store numbers at the address
