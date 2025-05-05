
        global _start                  ; directive for global entrypoint for gcc

        section .bss
MEM:
        resb 65536                     ; 2^16 byte cells

        section .text

_start:                                ; linker entrypoint
        mov bx, 0                      ; initialize bx as 0 (this will be our cell counter)

        add bx, 1                      ; move cell-pointer (increment)

        add bx, 1                      ; move cell-pointer (increment)

        call input

        add bx, 1                      ; move cell-pointer (increment)

        call input

        sub bx, 1                      ; move cell-pointer (decrement)

        sub bx, 1                      ; move cell-pointer (decrement)

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add dx, bx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end1                        ; if cell is zero, don't enter scope
start1:
                
            
        add bx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add dx, bx
        cmp [edx], byte 00
        JE end1                        ; if cell is zero jump to end
        JMP start1                     ; else continue
end1:        
        
        add bx, 1                      ; move cell-pointer (increment)

        call output

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        call output

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        call output

        call output

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        call output

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add dx, bx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end2                        ; if cell is zero, don't enter scope
start2:
                
            
        add bx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add dx, bx
        cmp [edx], byte 00
        JE end2                        ; if cell is zero jump to end
        JMP start2                     ; else continue
end2:        
        
        add bx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        call output

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add dx, bx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end3                        ; if cell is zero, don't enter scope
start3:
                
            
        add bx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add dx, bx
        cmp [edx], byte 00
        JE end3                        ; if cell is zero jump to end
        JMP start3                     ; else continue
end3:        
        
        add bx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        call output

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        call output

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        call output

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        call output

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        call output

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

        mov eax, 1                     ; add 1 to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add dx, bx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end4                        ; if cell is zero, don't enter scope
start4:
                
            
        add bx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        sub bx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add dx, bx
        cmp [edx], byte 00
        JE end4                        ; if cell is zero jump to end
        JMP start4                     ; else continue
end4:        
        
        add bx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        call output

        mov eax, 1                     ; sub 1 from current cell
        call sub                       ; sub value from cell

        call output

        add bx, 1                      ; move cell-pointer (increment)

        call output

        add bx, 1                      ; move cell-pointer (increment)

        call output
    
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
