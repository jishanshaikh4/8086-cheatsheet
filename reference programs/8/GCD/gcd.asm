data segment    
a dw 0015h
b dw 0007h 
data ends
 
code segment
assume cs:code,ds:data
start: 
    MOV AX,DATA
    MOV DS,AX
    MOV AX,[DI]
    ADD DI,2
up: CMP AX,[DI]
    JZ down
    JNC next
    MOV BX,[DI]
    MOV [DI],AX
    MOV AX,BX
next:  SUB AX,[DI]
    JMP up
down: MOV [DI+2],AX      
    HLT
 code ends 
end start
end up  
end next
end down 
Output