# ORG 2000H
LXI	H,F100	      // HL ← F100
MOV	A,M	      // A ← [HL]
MOV	C,M	      // C←  [HL]
MOV	D,M	      // D ← [HL]
INX	H	      // HL+1 → HL
up:SUB	M	      // A-M → M
JNC	up	    // Jump if A>M
ADD	M	    // M+A → A
CPI	00	    // Compare A with 00 H
JZ	down	    // True if A=00 H
MOV	A,D	    // D → A
ADD	C	    // A+C → A
MOV	D,A	      // A → D
JMP	up	      	// Unconditional Jump
down:MOV	A,D	      // D →A
STA	F200	    // A →[F200]
RST 1		      // Terminate

      # ORG F100H        // Store inputs at the address
# DB 05H ,03 H             // Store two bytes in successive location
