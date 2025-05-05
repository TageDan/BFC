        global _start                  ; directive for global entrypoint for gcc

        section .bss
MEM:
        resb 65536                     ; 2^16 byte cells

        section .text

_start:                                ; linker entrypoint
        mov bx, 0                      ; initialize bx as 0 (this will be our cell counter)

        mov eax, 'a'                   ; add 'a' to current cell
        call add                       ; add value to cell
        call output                    ; test output (expect 'a')

        add bx, 1                      ; move cell-pointer (increment)

        call input                     ; test input

        call output                    ; test output (expect 'nothing')

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add one to cell
        call add

        call output                    ; test output (expect 'b')

        mov eax, 1
        call sub
        call output

; scopes will have labels
        mov edx, MEM                   ; get base address of cells
        add dx, bx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end0                        ; if cell is zero, don't enter scope
start0:
        mov edx, MEM                   ; get base address of cells
        add dx, bx
        cmp [edx], byte 00
        JE end0                        ; if cell is zero jump to end
        JMP start0                     ; else continue
end0:
; Exit
        mov eax, 1
        mov ebx, 0
        int 0x80

add:
        mov edx, MEM                   ; get base adress of cells
        add dx, bx                     ; add offset (cell counter)
        add [edx], eax                 ; add value stored in eax to cell
        ret

sub:
        mov edx, MEM                   ; get base adress of cells
        add dx, bx                     ; add offset (cell counter)
        sub [edx], eax                 ; sub value stored in eax from cell
        ret

output:
; push to stack

        push ecx
        push edx
        push eax
        push ebx

; procedure

        mov ecx, MEM                   ; get base address of cells
        add cx, bx                     ; add offset (cell counter)
        mov eax, 4                     ; syscall - write
; ecx already contains pointer to the char in memory
        mov edx, 1                     ; len = 1 (output only one char)
        mov ebx, 1                     ; fd 1 = stdout
        int 0x80                       ; interupt signal for syscall

; pop from stack

        pop ebx
        pop eax
        pop edx
        pop ecx
        ret

input:
; push to stack

        push ecx
        push edx
        push eax
        push ebx

; procedure

        mov ecx, MEM                   ; get base address of cells
        add cx, bx                     ; add offset (cell counter)
        mov eax, 3                     ; Read syscall
; ecx has right value
        mov edx, 1                     ; len = 1 (accept one char input)
        mov ebx, 0                     ; fd 0 = stdin
        int 0x80                       ; interupt signal for syscall

; pop from stack

        pop ebx
        pop eax
        pop edx
        pop ecx
        ret
