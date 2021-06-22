data segment
a dw 04eeh
b dw 0452h  
qnt dw ?
rmdr dw ?
data ends
 
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax 
mov ax,a
mov bx,b
div bx  
mov qnt,ax
mov rmdr,dx 
hlt 
 code ends
end start
Output