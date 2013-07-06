; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.30319.01 

	TITLE	C:\Dev\LevOS\kernel\Kernel\ACPI.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	?rsdp@@3PAURSDPDescriptor@@A			; rsdp
_BSS	SEGMENT
?rsdp@@3PAURSDPDescriptor@@A DD 01H DUP (?)		; rsdp
_BSS	ENDS
PUBLIC	??_C@_08KPNDKLJK@RSD?5PTR?5?$AA@		; `string'
PUBLIC	?ACPI_findRSDP@@YAPAURSDPDescriptor@@XZ		; ACPI_findRSDP
EXTRN	?strlcmp@@YA_NPAD0H@Z:PROC			; strlcmp
;	COMDAT ??_C@_08KPNDKLJK@RSD?5PTR?5?$AA@
; File c:\dev\levos\kernel\kernel\acpi.cpp
CONST	SEGMENT
??_C@_08KPNDKLJK@RSD?5PTR?5?$AA@ DB 'RSD PTR ', 00H	; `string'
; Function compile flags: /Ogtpy
CONST	ENDS
;	COMDAT ?ACPI_findRSDP@@YAPAURSDPDescriptor@@XZ
_TEXT	SEGMENT
?ACPI_findRSDP@@YAPAURSDPDescriptor@@XZ PROC		; ACPI_findRSDP, COMDAT

; 18   : {

	push	esi

; 19   : 	//  0x000E0000 to 0x000FFFFF
; 20   : 	for(int i = 0xE0000; i < 0xFFFFF; i+=16)

	mov	esi, 917504				; 000e0000H
$LL4@ACPI_findR:

; 21   : 	{
; 22   : 		if(strlcmp((char*)i, "RSD PTR ", 8)) // string length compare

	push	8
	push	OFFSET ??_C@_08KPNDKLJK@RSD?5PTR?5?$AA@
	push	esi
	call	?strlcmp@@YA_NPAD0H@Z			; strlcmp
	add	esp, 12					; 0000000cH
	test	al, al
	jne	SHORT $LN8@ACPI_findR

; 19   : 	//  0x000E0000 to 0x000FFFFF
; 20   : 	for(int i = 0xE0000; i < 0xFFFFF; i+=16)

	add	esi, 16					; 00000010H
	cmp	esi, 1048575				; 000fffffH
	jl	SHORT $LL4@ACPI_findR

; 26   : 		}
; 27   : 	}
; 28   : 	return 0;

	xor	eax, eax
	pop	esi

; 29   : }

	ret	0
$LN8@ACPI_findR:

; 23   : 		{
; 24   : 			//if(i & 0x10 == 0x10)
; 25   : 				return (RSDPDescriptor*)i;

	mov	eax, esi
	pop	esi

; 29   : }

	ret	0
?ACPI_findRSDP@@YAPAURSDPDescriptor@@XZ ENDP		; ACPI_findRSDP
_TEXT	ENDS
PUBLIC	??_C@_0N@CPDMECFE@?6RSDT?5?$EA?50x?$CFx?$AA@	; `string'
PUBLIC	??_C@_0BE@MCMPDEHP@?6ACPI?5version?3?5?$CFd?40?$AA@ ; `string'
PUBLIC	??_C@_0N@HCNABDFI@?6RSDP?5?$EA?50x?$CFx?$AA@	; `string'
PUBLIC	??_C@_0BB@LMHENEOH@?6ACPI?5testing?4?4?4?$AA@	; `string'
PUBLIC	?ACPI_test@@YAXXZ				; ACPI_test
EXTRN	?DebugPrintf@@YAHPBDZZ:PROC			; DebugPrintf
;	COMDAT ??_C@_0N@CPDMECFE@?6RSDT?5?$EA?50x?$CFx?$AA@
CONST	SEGMENT
??_C@_0N@CPDMECFE@?6RSDT?5?$EA?50x?$CFx?$AA@ DB 0aH, 'RSDT @ 0x%x', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@MCMPDEHP@?6ACPI?5version?3?5?$CFd?40?$AA@
CONST	SEGMENT
??_C@_0BE@MCMPDEHP@?6ACPI?5version?3?5?$CFd?40?$AA@ DB 0aH, 'ACPI version'
	DB	': %d.0', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@HCNABDFI@?6RSDP?5?$EA?50x?$CFx?$AA@
CONST	SEGMENT
??_C@_0N@HCNABDFI@?6RSDP?5?$EA?50x?$CFx?$AA@ DB 0aH, 'RSDP @ 0x%x', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BB@LMHENEOH@?6ACPI?5testing?4?4?4?$AA@
CONST	SEGMENT
??_C@_0BB@LMHENEOH@?6ACPI?5testing?4?4?4?$AA@ DB 0aH, 'ACPI testing...', 00H ; `string'
; Function compile flags: /Ogtpy
CONST	ENDS
;	COMDAT ?ACPI_test@@YAXXZ
_TEXT	SEGMENT
?ACPI_test@@YAXXZ PROC					; ACPI_test, COMDAT

; 9    : {

	push	esi

; 10   : 	DebugPrintf("\nACPI testing...");

	push	OFFSET ??_C@_0BB@LMHENEOH@?6ACPI?5testing?4?4?4?$AA@
	call	?DebugPrintf@@YAHPBDZZ			; DebugPrintf
	add	esp, 4

; 11   : 	rsdp = ACPI_findRSDP();

	mov	esi, 917504				; 000e0000H
$LL6@ACPI_test:
	push	8
	push	OFFSET ??_C@_08KPNDKLJK@RSD?5PTR?5?$AA@
	push	esi
	call	?strlcmp@@YA_NPAD0H@Z			; strlcmp
	add	esp, 12					; 0000000cH
	test	al, al
	jne	SHORT $LN7@ACPI_test
	add	esi, 16					; 00000010H
	cmp	esi, 1048575				; 000fffffH
	jl	SHORT $LL6@ACPI_test
	xor	esi, esi
$LN7@ACPI_test:

; 12   : 	DebugPrintf("\nRSDP @ 0x%x", rsdp);

	push	esi
	push	OFFSET ??_C@_0N@HCNABDFI@?6RSDP?5?$EA?50x?$CFx?$AA@
	mov	DWORD PTR ?rsdp@@3PAURSDPDescriptor@@A, esi ; rsdp
	call	?DebugPrintf@@YAHPBDZZ			; DebugPrintf

; 13   : 	DebugPrintf("\nACPI version: %d.0", rsdp->Revision + 1);

	mov	eax, DWORD PTR ?rsdp@@3PAURSDPDescriptor@@A ; rsdp
	movsx	ecx, BYTE PTR [eax+15]
	inc	ecx
	push	ecx
	push	OFFSET ??_C@_0BE@MCMPDEHP@?6ACPI?5version?3?5?$CFd?40?$AA@
	call	?DebugPrintf@@YAHPBDZZ			; DebugPrintf

; 14   : 	DebugPrintf("\nRSDT @ 0x%x", rsdp->RsdtAddress);

	mov	edx, DWORD PTR ?rsdp@@3PAURSDPDescriptor@@A ; rsdp
	mov	eax, DWORD PTR [edx+16]
	push	eax
	push	OFFSET ??_C@_0N@CPDMECFE@?6RSDT?5?$EA?50x?$CFx?$AA@
	call	?DebugPrintf@@YAHPBDZZ			; DebugPrintf
	add	esp, 24					; 00000018H
	pop	esi

; 15   : }

	ret	0
?ACPI_test@@YAXXZ ENDP					; ACPI_test
_TEXT	ENDS
END