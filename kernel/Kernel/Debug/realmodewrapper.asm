; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.30319.01 

	TITLE	C:\Dev\LevOS\kernel\Kernel\realmodewrapper.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_09MEJHBFNJ@RMODE?4SYS?$AA@		; `string'
PUBLIC	??_C@_0DL@NJJOPAOO@?6Goin?8?5to?5Real?5Mode?$CB?5Bye?5good?5li@ ; `string'
PUBLIC	?doRealModeInterrupt@@YAXDDD@Z			; doRealModeInterrupt
EXTRN	?pic_initialize@@YA_NEE@Z:PROC			; pic_initialize
EXTRN	?loadFileToLoc@@YADPADPAX@Z:PROC		; loadFileToLoc
EXTRN	?DebugPrintf@@YAHPBDZZ:PROC			; DebugPrintf
;	COMDAT ??_C@_09MEJHBFNJ@RMODE?4SYS?$AA@
; File c:\dev\levos\kernel\kernel\realmodewrapper.cpp
CONST	SEGMENT
??_C@_09MEJHBFNJ@RMODE?4SYS?$AA@ DB 'RMODE.SYS', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0DL@NJJOPAOO@?6Goin?8?5to?5Real?5Mode?$CB?5Bye?5good?5li@
CONST	SEGMENT
??_C@_0DL@NJJOPAOO@?6Goin?8?5to?5Real?5Mode?$CB?5Bye?5good?5li@ DB 0aH, 'G'
	DB	'oin'' to Real Mode! Bye good life! :)  I mean not yet! :3', 00H ; `string'
; Function compile flags: /Odtpy
CONST	ENDS
;	COMDAT ?doRealModeInterrupt@@YAXDDD@Z
_TEXT	SEGMENT
_i$ = 8							; size = 1
__ah$ = 12						; size = 1
__al$ = 16						; size = 1
?doRealModeInterrupt@@YAXDDD@Z PROC			; doRealModeInterrupt, COMDAT

; 7    : {

	push	ebp
	mov	ebp, esp

; 8    : 	DebugPrintf("\nGoin' to Real Mode! Bye good life! :)  I mean not yet! :3");

	push	OFFSET ??_C@_0DL@NJJOPAOO@?6Goin?8?5to?5Real?5Mode?$CB?5Bye?5good?5li@
	call	?DebugPrintf@@YAHPBDZZ			; DebugPrintf
	add	esp, 4

; 9    : 
; 10   : 	loadFileToLoc("RMODE.SYS", (void*)0x7C00);

	push	31744					; 00007c00H
	push	OFFSET ??_C@_09MEJHBFNJ@RMODE?4SYS?$AA@
	call	?loadFileToLoc@@YADPADPAX@Z		; loadFileToLoc
	add	esp, 8

; 11   : 	pic_initialize(0x08, 0x70);

	push	112					; 00000070H
	push	8
	call	?pic_initialize@@YA_NEE@Z		; pic_initialize
	add	esp, 8

; 12   : 	_asm mov eax, 0x7C00

	mov	eax, 31744				; 00007c00H

; 13   : 	_asm jmp eax

	jmp	eax

; 14   : }

	pop	ebp
	ret	0
?doRealModeInterrupt@@YAXDDD@Z ENDP			; doRealModeInterrupt
_TEXT	ENDS
END
