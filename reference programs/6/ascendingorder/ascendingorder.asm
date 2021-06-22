data segment    
a dw 0eeeh 
b dw 1245h
c dw 5bach
d dw 8fffh
e dw 0cc4h
data ends
 
code segment
assume cs:code,ds:data
start: 
    MOV AX,DATA
    MOV DS,AX 
    MOV CL,05
    DEC CL 
up:  
    MOV DI,0000H 
    MOV DL,CL
up1:MOV AX,[DI]
    ADD DI,2
    CMP AX,[DI] 
    JC down    
    MOV BX,[DI]
    MOV [DI],AX
    SUB DI,2
    MOV [DI],BX
    ADD DI,2
    
down: DEC DL
    JNZ up1
    DEC CL
    JNZ up 
    HLT
 code ends 
end start
end up 
end up1
end down
Output