section .data
	msg db "Hello World" 	

section .text
	global_start

_start:
	mov rax, 1		; sys_write 시스템 콜
	mov rdi, 1		; file descrupter에 뭔가 출력할건데
	mov rsi, msg		; 실제 출력할 값
	mov rdx, 12		; 출력할 수 있는 길이
	syscall			; 실행
	mov rax, 60		; exit 시스템콜
	mov rdi, 0		
	syscall
