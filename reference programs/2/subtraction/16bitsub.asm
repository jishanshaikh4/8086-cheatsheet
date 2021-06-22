data segment
a dw 0e4ch
b dw 455ah
su dw ? 
br dw ?
data ends
 
code segment
assume cs:code,ds:data
start: mov cx,0000h
mov ax,data
mov ds,ax 
mov dx,a
mov bx,b
sub bx,dx
jnc 0003
inc cx  
mov su,bx 
mov br,cx
hlt 
 code ends
end start
Output