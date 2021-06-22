data segment
a db 09h
b db 02h
c db ? 
cr db ?
data ends
 
code segment
assume cs:code,ds:data
start: mov cx,0000h
mov ax,data
mov ds,ax
mov dl,a
mov bl,b
add dl,bl 
jnc next
inc cx 
next: mov c,dl   
mov cr,cl
hlt
code ends
end start
end next
Output
