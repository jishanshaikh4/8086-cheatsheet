# ORG 7000H
LXI	H, 7501		 
MOV	A, M		   
INX	H		    
SBB	M		   
INX	H		    
MOV	M, A		   
RST 1
#ORG 7501H
#DB 20,10
