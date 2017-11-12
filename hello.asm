; Hello World Assembly Test Program (v1.0, July 6 2010)
; Written by Ian Seyler
;
; BareMetal compile:
; nasm hello.asm -o hello.app


[BITS 64]

%INCLUDE "libBareMetal.asm"

global main

main:					; Start of program label

	lea rsi, [rel hello_message]	; Load RSI with memory address of string
	call [b_output]			; Print the string that RSI points to

ret					; Return to OS

hello_message: db 'Hello, world!', 13, 0
