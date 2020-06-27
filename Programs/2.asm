section .text
extern srev
global reverse
reverse:
	mov rbp,len
	mov rdi, [rbp]
	mov rdi,str2
	call srev
	ret
	
section .data 
	str2 db 'The Woods',10,0
	len dq $ - str2
