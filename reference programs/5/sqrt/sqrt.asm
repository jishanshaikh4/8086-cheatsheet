data segment
a dw 0024h
data ends
 
code segment
assume cs:code,ds:data
start: 
    MOV AX,DATA
    MOV DS,AX
	MOV AX,a
	MOV CX, 0001	
	MOV BX, 0001 
up:
    sub ax,bx
    cmp ax,0000
    jz down
	ADD BX, 02	
	INC CX	 
	jmp up
down: 
    MOV [di+2], CX
	HLT
hlt 
 code ends 

end start
end up 
end down
Output