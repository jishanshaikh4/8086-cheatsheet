
data segment
a db 01h
b db 5ah
su db ? 
br db ?
data ends
 
code segment
assume cs:code,ds:data
start: mov cx,0000h
mov ax,data
mov ds,ax 
mov dl,a
mov bl,b
sub dl,bl
jnc next
inc cx  
next:  mov su,bl 
mov br,cl
hlt 
 code ends
end start
end next
Output