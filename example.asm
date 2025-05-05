section .bss
        MEM: resb 65536; 2^16 byte cells

section .text
        global _start ; directive for global entrypoint for gcc

_start: ; linker entrypoint
        mov bx, 0; initialize bx as 0 (this will be our cell counter)


        mov eax, dword 'a'; add 'a' to current cell
        call add; add value to cell
        call output ; test output (expect 'a')

        add bx, 1 ; move cell-pointer (increment)

        mov eax, dword 'b'; add 'b' to current cell
        call add; add value to cell

        call output; test output (expect 'b')
        sub bx, 1; move cell-pointer (decrement)
        call output ; test output (expect 'a')
        
        ; Exit
        mov eax,1
        mov ebx, 0
        int 0x80

add:
        mov edx, MEM ; get base adress of cells
        add dx, bx ; add offset (cell counter)
        add [edx], eax ; add value stored in eax to cell
        ret

sub:
        mov edx, MEM ; get base adress of cells
        add dx, bx ; add offset (cell counter)
        sub [edx], eax ; sub value stored in eax from cell
        ret

output:
        mov ecx, MEM ; get base adress of cells
        add cx, bx ; add offset (cell counter)
        mov eax, 4 ; syscall - write
        ; ecx already contains pointer to the char in memory
        mov edx, 1 ; len = 1 (output only one char)
        mov ebx, 1 ; fd 1 = stdout
        int 0x80; interupt signal for syscall
        ret

        

