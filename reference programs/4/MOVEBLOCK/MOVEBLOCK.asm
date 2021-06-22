data segment    
a dw 0009h 
b dw 1245h
c dw 5bach
d dw 256ah
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
    MOV AX,[DI]
    MOV [DI+12],AX 
    ADD DI,2
    LOOP up 
    HLT
 code ends 

end start
end up
Output