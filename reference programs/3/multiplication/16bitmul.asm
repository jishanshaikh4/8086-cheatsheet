data segment
a dw 014ch
b dw 525ah 
data ends
 
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax 
mov ax,a
mov bx,b
mul bx  
mov [di+4],ax
mov [di+6],dx 
hlt 
 code ends
end start
Output