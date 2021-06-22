# ORG 2000H
MVI	A,09	      // Load first no. in reg.A
MVI	B,07	      // Load second No. in reg.B
CMP	B	      // Compare B to A
JZ	down	      // True if A=B 
JNC	shift	      // True if A>B
MOV	C,A	      // A → C
MOV	A,B	      // A ← B
MOV	B,C	      // C← B
shift:SUB	B	    // A-B → A
CMP	B	          // Compare B to A
JZ	move	      // True if A=B 
JNC	shift	      // True if A>B
MOV	C,A	      // A ← C
MOV	A,B	      // A ← B
MOV	B,C	      // C → A
JMP	shift	      // Unconditional Jump
move:MOV	A,B	      // B → A
down:STA	F200	      // A → [address]
RST 1		        // Terminate
