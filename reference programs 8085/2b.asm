# ORG 7000H
LHLD	7501 		    
XCHG			     
LHLD	7503 		    
MOV	A, E		   
SUB	L		    
MOV	L, A		  
MOV	A, D		  
SBB	H		   
MOV	H,A		   
SHLD	7505		    
RST 1	     
# ORG 7501H
# DB 30,40,10,20  
