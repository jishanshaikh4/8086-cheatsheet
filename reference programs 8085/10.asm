# ORG 2000H
LXI	H,F100	      // HL &8592; F100
MOV	C,M	                 // C &8592;[HL]
MVI	D,00	                 // Clear reg.D
INX	H	                 // HL+1 &8594; HL
DCR	C	                 // C-1 &8594; C
MOV	A,M	                 // M &8594; A
up:INX	H	                 // HL+1 &8594; HL
ADD	M	                 // M+A &8594;A
DAA		                 // Decimal Adjust After Addition
JNC	down	                 // Jump if no carry
INR	D	                 // D+1 &8594;D
down:DCR	C	                 // C-1 &8594;C
JNZ	up	                 // Jump if ZF=0
STA	F200	                 // A &8592;[F200]
RST 1		                // Terminate 

# ORG F100H                          // Store inputs at the address
# DB 04,43,77,55,55                // Store bytes in successive locations
