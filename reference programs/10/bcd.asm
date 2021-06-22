data segment    
a dw 1234h
b dw 5678h
c dw 4586h
d dw 7890h
e dw 4758h
sum dw ? 
cr dw ?
data ends
 
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov cl,05h
dec cl
mov bx,00h
mov ax,[di]
next: add di,2
add al,[di]
daa
mov dl,al
mov al,ah
adc al,[di+1]
daa 
mov dh,al
mov ax,dx
jnc next1
inc bl
next1: dec cl
jnz next
mov sum,ax
mov cr,bx
hlt 
 code ends
end start
end next
Output