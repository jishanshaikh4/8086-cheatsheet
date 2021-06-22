data segment
a dw 5e6eh
b dw 0a5ah
c dw ? 
cr dw ?
data ends
 
code segment
assume cs:code,ds:data
start: mov cx,0000h
mov ax,data
mov ds,ax 
mov dx,a
mov bx,b
mov al,bl
add al,dl
mov ah,bh
adc ah,dh 
jnc next
inc cx 
next: mov [di+4],ax   
mov [di+6],cx
hlt 
 code ends
end start
end next
Output
