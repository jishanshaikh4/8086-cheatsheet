data segment    
a dw 0012h
b db 07h 
data ends
 
code segment
assume cs:code,ds:data
start: 
    MOV AX,DATA
    MOV DS,AX
    MOV AX,[DI]
    ADD DI,2 
    MOV BX,AX
    MOV CX,BX
up: DIV [DI]
    CMP AH,0000H
    JZ down 
    MOV AX,CX
    ADD AX,BX
    ADC DX,00
    MOV CX ,AX
    JMP up
down:MOV [DI+2],CX          
    HLT
 code ends 
end start
end up  
end down 
Output