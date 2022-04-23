section .text
	global_start

_start:
	xor rax, rax		; 똑같은 값을 XOR 하면 0이 나옴 mov rax 0;이랑 같음
	mov rbx, rax
	mov rcx, rax
	mov rdx, rax		; 다 0으로 초기화한다는 뜻

	sub rsp, 64		; 64만큼의 공간 확보
	mov rdi, 0
	mov rsi, rsp
	mov rdx, 63

	syscall			; sys_read를 불러옴, fd에 0을 넣어 읽기 모드,문자 시작 주소

	mov rax, 1
	mov rdi, 1
	mov rsi, rsp
	mov rdx, 63

	syscall

	mov rax, 60

	syscall
