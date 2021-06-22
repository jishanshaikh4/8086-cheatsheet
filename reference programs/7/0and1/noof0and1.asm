data segment    
a dw 9fffh 
data ends
 
code segment
assume cs:code,ds:data
start: 
    MOV CL,16
    MOV DX,00
    MOV BX,00
    MOV AX,DATA
    MOV DS,AX
    MOV AX,a
 up:ROL AX,1
    JNC down
    INC DL
    JMP down1
down:INC BL
down1:DEC CL
    JNZ up
    MOV [DI+2],DX
    MOV [DI+4],BX       
    HLT
 code ends 
end start
end up 
end down
end down1
Output