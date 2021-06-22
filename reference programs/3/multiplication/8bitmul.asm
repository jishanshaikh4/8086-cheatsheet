data segment
a db 4ch
b db 5ah
mult dw ? 
data ends
 
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax 
mov al,a
mov bl,b
mul bl  
mov mult,ax 
hlt 
 code ends
end start
Output