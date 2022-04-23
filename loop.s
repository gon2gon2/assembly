section .data
	msg db "A"

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 1	; 한글자만 출력
	mov r10, 1

again:
	cmp r10, 100	; 비교해서 100이 되면 done으로, cmp 바로 밑에는 어떻게 비교할건지 정의필요
	je done
	syscall
	mov rax, 1	; 함수 결과가 담기기 때문에 초기화 해야 함
	inc r10
	jmp again

done:
	mov rax, 60
	mov rdi, 0
	syscall	
