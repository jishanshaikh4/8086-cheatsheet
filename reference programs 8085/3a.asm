# ORG 7000H
LHLD	7501 	    
XCHG		       	
LDA	7503 	     
LXI	H,0000	     			
MVI	C,08	     			
up:DAD	H	     		
RAL		     		
JNC	down    					
DAD	D	     		
down:DCR	C					
JNZ	up	     		
SHLD	7504	     				
RST 1	
		
#ORG 7501H				
# DB 25,00,05
