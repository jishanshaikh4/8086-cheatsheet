data segment
a dw 000eh
b db 52h  
qnt db ?
rmdr db ?
data ends
 
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax 
mov ax,a
mov bl,b
div bl  
mov qnt,al
mov rmdr,ah
hlt 
 code ends
end start
Output