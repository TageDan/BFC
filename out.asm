
        global _start                  ; directive for global entrypoint for gcc

        section .bss
MEM:
        resb 30000                     ; 30000 byte cells

        section .text

_start:                                ; linker entrypoint
        mov ebx, 0                      ; initialize bx as 0 (this will be our cell counter)

        mov eax, 13                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end0                        ; if cell is zero, don't enter scope
start0:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 2                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 5                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 2                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end0                        ; if cell is zero jump to end
        JMP start0                     ; else continue
end0:        
        
        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 6                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 3                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 10                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end1                        ; if cell is zero, don't enter scope
start1:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end2                        ; if cell is zero, don't enter scope
start2:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end2                        ; if cell is zero jump to end
        JMP start2                     ; else continue
end2:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end3                        ; if cell is zero, don't enter scope
start3:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end3                        ; if cell is zero jump to end
        JMP start3                     ; else continue
end3:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end1                        ; if cell is zero jump to end
        JMP start1                     ; else continue
end1:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end4                        ; if cell is zero, don't enter scope
start4:
                
            
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end5                        ; if cell is zero, don't enter scope
start5:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end5                        ; if cell is zero jump to end
        JMP start5                     ; else continue
end5:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end4                        ; if cell is zero jump to end
        JMP start4                     ; else continue
end4:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end6                        ; if cell is zero, don't enter scope
start6:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end6                        ; if cell is zero jump to end
        JMP start6                     ; else continue
end6:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end7                        ; if cell is zero, don't enter scope
start7:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end7                        ; if cell is zero jump to end
        JMP start7                     ; else continue
end7:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 5                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end8                        ; if cell is zero, don't enter scope
start8:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end9                        ; if cell is zero, don't enter scope
start9:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end9                        ; if cell is zero jump to end
        JMP start9                     ; else continue
end9:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end8                        ; if cell is zero jump to end
        JMP start8                     ; else continue
end8:        
        
        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 27                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 17                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end10                        ; if cell is zero, don't enter scope
start10:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end10                        ; if cell is zero jump to end
        JMP start10                     ; else continue
end10:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end11                        ; if cell is zero, don't enter scope
start11:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end11                        ; if cell is zero jump to end
        JMP start11                     ; else continue
end11:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end12                        ; if cell is zero, don't enter scope
start12:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end13                        ; if cell is zero, don't enter scope
start13:
                
            
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end14                        ; if cell is zero, don't enter scope
start14:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end14                        ; if cell is zero jump to end
        JMP start14                     ; else continue
end14:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end13                        ; if cell is zero jump to end
        JMP start13                     ; else continue
end13:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end15                        ; if cell is zero, don't enter scope
start15:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end15                        ; if cell is zero jump to end
        JMP start15                     ; else continue
end15:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end16                        ; if cell is zero, don't enter scope
start16:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end16                        ; if cell is zero jump to end
        JMP start16                     ; else continue
end16:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 4                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end17                        ; if cell is zero, don't enter scope
start17:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end18                        ; if cell is zero, don't enter scope
start18:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end18                        ; if cell is zero jump to end
        JMP start18                     ; else continue
end18:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end17                        ; if cell is zero jump to end
        JMP start17                     ; else continue
end17:        
        
        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 7                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end19                        ; if cell is zero, don't enter scope
start19:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end20                        ; if cell is zero, don't enter scope
start20:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end20                        ; if cell is zero jump to end
        JMP start20                     ; else continue
end20:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end19                        ; if cell is zero jump to end
        JMP start19                     ; else continue
end19:        
        
        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 16                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end21                        ; if cell is zero, don't enter scope
start21:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end21                        ; if cell is zero jump to end
        JMP start21                     ; else continue
end21:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end22                        ; if cell is zero, don't enter scope
start22:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end23                        ; if cell is zero, don't enter scope
start23:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end23                        ; if cell is zero jump to end
        JMP start23                     ; else continue
end23:        
        
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end24                        ; if cell is zero, don't enter scope
start24:
                
            
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end25                        ; if cell is zero, don't enter scope
start25:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end25                        ; if cell is zero jump to end
        JMP start25                     ; else continue
end25:        
        
        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end26                        ; if cell is zero, don't enter scope
start26:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end26                        ; if cell is zero jump to end
        JMP start26                     ; else continue
end26:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end24                        ; if cell is zero jump to end
        JMP start24                     ; else continue
end24:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end27                        ; if cell is zero, don't enter scope
start27:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end27                        ; if cell is zero jump to end
        JMP start27                     ; else continue
end27:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end28                        ; if cell is zero, don't enter scope
start28:
                
            
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end29                        ; if cell is zero, don't enter scope
start29:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end29                        ; if cell is zero jump to end
        JMP start29                     ; else continue
end29:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end30                        ; if cell is zero, don't enter scope
start30:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end30                        ; if cell is zero jump to end
        JMP start30                     ; else continue
end30:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end28                        ; if cell is zero jump to end
        JMP start28                     ; else continue
end28:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end31                        ; if cell is zero, don't enter scope
start31:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end31                        ; if cell is zero jump to end
        JMP start31                     ; else continue
end31:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end32                        ; if cell is zero, don't enter scope
start32:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end32                        ; if cell is zero jump to end
        JMP start32                     ; else continue
end32:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end33                        ; if cell is zero, don't enter scope
start33:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end33                        ; if cell is zero jump to end
        JMP start33                     ; else continue
end33:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end34                        ; if cell is zero, don't enter scope
start34:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end35                        ; if cell is zero, don't enter scope
start35:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end35                        ; if cell is zero jump to end
        JMP start35                     ; else continue
end35:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end36                        ; if cell is zero, don't enter scope
start36:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end36                        ; if cell is zero jump to end
        JMP start36                     ; else continue
end36:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end37                        ; if cell is zero, don't enter scope
start37:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end37                        ; if cell is zero jump to end
        JMP start37                     ; else continue
end37:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end38                        ; if cell is zero, don't enter scope
start38:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end38                        ; if cell is zero jump to end
        JMP start38                     ; else continue
end38:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end39                        ; if cell is zero, don't enter scope
start39:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end39                        ; if cell is zero jump to end
        JMP start39                     ; else continue
end39:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end40                        ; if cell is zero, don't enter scope
start40:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end40                        ; if cell is zero jump to end
        JMP start40                     ; else continue
end40:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end41                        ; if cell is zero, don't enter scope
start41:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end41                        ; if cell is zero jump to end
        JMP start41                     ; else continue
end41:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end42                        ; if cell is zero, don't enter scope
start42:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end42                        ; if cell is zero jump to end
        JMP start42                     ; else continue
end42:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end43                        ; if cell is zero, don't enter scope
start43:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end43                        ; if cell is zero jump to end
        JMP start43                     ; else continue
end43:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end44                        ; if cell is zero, don't enter scope
start44:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end44                        ; if cell is zero jump to end
        JMP start44                     ; else continue
end44:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end45                        ; if cell is zero, don't enter scope
start45:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end45                        ; if cell is zero jump to end
        JMP start45                     ; else continue
end45:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end34                        ; if cell is zero jump to end
        JMP start34                     ; else continue
end34:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end46                        ; if cell is zero, don't enter scope
start46:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end46                        ; if cell is zero jump to end
        JMP start46                     ; else continue
end46:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end47                        ; if cell is zero, don't enter scope
start47:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end47                        ; if cell is zero jump to end
        JMP start47                     ; else continue
end47:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end48                        ; if cell is zero, don't enter scope
start48:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end49                        ; if cell is zero, don't enter scope
start49:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end49                        ; if cell is zero jump to end
        JMP start49                     ; else continue
end49:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end50                        ; if cell is zero, don't enter scope
start50:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end51                        ; if cell is zero, don't enter scope
start51:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end52                        ; if cell is zero, don't enter scope
start52:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end52                        ; if cell is zero jump to end
        JMP start52                     ; else continue
end52:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end53                        ; if cell is zero, don't enter scope
start53:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end53                        ; if cell is zero jump to end
        JMP start53                     ; else continue
end53:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end51                        ; if cell is zero jump to end
        JMP start51                     ; else continue
end51:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end54                        ; if cell is zero, don't enter scope
start54:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end54                        ; if cell is zero jump to end
        JMP start54                     ; else continue
end54:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end50                        ; if cell is zero jump to end
        JMP start50                     ; else continue
end50:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end55                        ; if cell is zero, don't enter scope
start55:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end55                        ; if cell is zero jump to end
        JMP start55                     ; else continue
end55:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end56                        ; if cell is zero, don't enter scope
start56:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end57                        ; if cell is zero, don't enter scope
start57:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end57                        ; if cell is zero jump to end
        JMP start57                     ; else continue
end57:        
        
        sub ebx, 10                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end56                        ; if cell is zero jump to end
        JMP start56                     ; else continue
end56:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end58                        ; if cell is zero, don't enter scope
start58:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end58                        ; if cell is zero jump to end
        JMP start58                     ; else continue
end58:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end48                        ; if cell is zero jump to end
        JMP start48                     ; else continue
end48:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end59                        ; if cell is zero, don't enter scope
start59:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end60                        ; if cell is zero, don't enter scope
start60:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end60                        ; if cell is zero jump to end
        JMP start60                     ; else continue
end60:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end61                        ; if cell is zero, don't enter scope
start61:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end62                        ; if cell is zero, don't enter scope
start62:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end62                        ; if cell is zero jump to end
        JMP start62                     ; else continue
end62:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end63                        ; if cell is zero, don't enter scope
start63:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end63                        ; if cell is zero jump to end
        JMP start63                     ; else continue
end63:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end61                        ; if cell is zero jump to end
        JMP start61                     ; else continue
end61:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end64                        ; if cell is zero, don't enter scope
start64:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end64                        ; if cell is zero jump to end
        JMP start64                     ; else continue
end64:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end59                        ; if cell is zero jump to end
        JMP start59                     ; else continue
end59:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end65                        ; if cell is zero, don't enter scope
start65:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end65                        ; if cell is zero jump to end
        JMP start65                     ; else continue
end65:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end66                        ; if cell is zero, don't enter scope
start66:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end66                        ; if cell is zero jump to end
        JMP start66                     ; else continue
end66:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end67                        ; if cell is zero, don't enter scope
start67:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end68                        ; if cell is zero, don't enter scope
start68:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end68                        ; if cell is zero jump to end
        JMP start68                     ; else continue
end68:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end69                        ; if cell is zero, don't enter scope
start69:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end70                        ; if cell is zero, don't enter scope
start70:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end71                        ; if cell is zero, don't enter scope
start71:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end71                        ; if cell is zero jump to end
        JMP start71                     ; else continue
end71:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end72                        ; if cell is zero, don't enter scope
start72:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end72                        ; if cell is zero jump to end
        JMP start72                     ; else continue
end72:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end70                        ; if cell is zero jump to end
        JMP start70                     ; else continue
end70:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end73                        ; if cell is zero, don't enter scope
start73:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end73                        ; if cell is zero jump to end
        JMP start73                     ; else continue
end73:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end69                        ; if cell is zero jump to end
        JMP start69                     ; else continue
end69:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end74                        ; if cell is zero, don't enter scope
start74:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end74                        ; if cell is zero jump to end
        JMP start74                     ; else continue
end74:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end75                        ; if cell is zero, don't enter scope
start75:
                
            
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end76                        ; if cell is zero, don't enter scope
start76:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end76                        ; if cell is zero jump to end
        JMP start76                     ; else continue
end76:        
        
        sub ebx, 11                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end75                        ; if cell is zero jump to end
        JMP start75                     ; else continue
end75:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end77                        ; if cell is zero, don't enter scope
start77:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end77                        ; if cell is zero jump to end
        JMP start77                     ; else continue
end77:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end67                        ; if cell is zero jump to end
        JMP start67                     ; else continue
end67:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end78                        ; if cell is zero, don't enter scope
start78:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end79                        ; if cell is zero, don't enter scope
start79:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end79                        ; if cell is zero jump to end
        JMP start79                     ; else continue
end79:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end80                        ; if cell is zero, don't enter scope
start80:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end81                        ; if cell is zero, don't enter scope
start81:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end81                        ; if cell is zero jump to end
        JMP start81                     ; else continue
end81:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end82                        ; if cell is zero, don't enter scope
start82:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end82                        ; if cell is zero jump to end
        JMP start82                     ; else continue
end82:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end80                        ; if cell is zero jump to end
        JMP start80                     ; else continue
end80:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end83                        ; if cell is zero, don't enter scope
start83:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end83                        ; if cell is zero jump to end
        JMP start83                     ; else continue
end83:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end78                        ; if cell is zero jump to end
        JMP start78                     ; else continue
end78:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end84                        ; if cell is zero, don't enter scope
start84:
                
            
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end85                        ; if cell is zero, don't enter scope
start85:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 36                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 36                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end85                        ; if cell is zero jump to end
        JMP start85                     ; else continue
end85:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end84                        ; if cell is zero jump to end
        JMP start84                     ; else continue
end84:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end86                        ; if cell is zero, don't enter scope
start86:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end86                        ; if cell is zero jump to end
        JMP start86                     ; else continue
end86:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end87                        ; if cell is zero, don't enter scope
start87:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end88                        ; if cell is zero, don't enter scope
start88:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end88                        ; if cell is zero jump to end
        JMP start88                     ; else continue
end88:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end89                        ; if cell is zero, don't enter scope
start89:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end89                        ; if cell is zero jump to end
        JMP start89                     ; else continue
end89:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end87                        ; if cell is zero jump to end
        JMP start87                     ; else continue
end87:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 21                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end90                        ; if cell is zero, don't enter scope
start90:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end90                        ; if cell is zero jump to end
        JMP start90                     ; else continue
end90:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end91                        ; if cell is zero, don't enter scope
start91:
                
            
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end92                        ; if cell is zero, don't enter scope
start92:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end92                        ; if cell is zero jump to end
        JMP start92                     ; else continue
end92:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end93                        ; if cell is zero, don't enter scope
start93:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end94                        ; if cell is zero, don't enter scope
start94:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end94                        ; if cell is zero jump to end
        JMP start94                     ; else continue
end94:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end95                        ; if cell is zero, don't enter scope
start95:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 13                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end96                        ; if cell is zero, don't enter scope
start96:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end96                        ; if cell is zero jump to end
        JMP start96                     ; else continue
end96:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end97                        ; if cell is zero, don't enter scope
start97:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end97                        ; if cell is zero jump to end
        JMP start97                     ; else continue
end97:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end98                        ; if cell is zero, don't enter scope
start98:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end98                        ; if cell is zero jump to end
        JMP start98                     ; else continue
end98:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end95                        ; if cell is zero jump to end
        JMP start95                     ; else continue
end95:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end93                        ; if cell is zero jump to end
        JMP start93                     ; else continue
end93:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end99                        ; if cell is zero, don't enter scope
start99:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end99                        ; if cell is zero jump to end
        JMP start99                     ; else continue
end99:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end100                        ; if cell is zero, don't enter scope
start100:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end101                        ; if cell is zero, don't enter scope
start101:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end101                        ; if cell is zero jump to end
        JMP start101                     ; else continue
end101:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end102                        ; if cell is zero, don't enter scope
start102:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 12                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end103                        ; if cell is zero, don't enter scope
start103:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end103                        ; if cell is zero jump to end
        JMP start103                     ; else continue
end103:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end104                        ; if cell is zero, don't enter scope
start104:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end104                        ; if cell is zero jump to end
        JMP start104                     ; else continue
end104:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end105                        ; if cell is zero, don't enter scope
start105:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end105                        ; if cell is zero jump to end
        JMP start105                     ; else continue
end105:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end106                        ; if cell is zero, don't enter scope
start106:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end106                        ; if cell is zero jump to end
        JMP start106                     ; else continue
end106:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end102                        ; if cell is zero jump to end
        JMP start102                     ; else continue
end102:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end100                        ; if cell is zero jump to end
        JMP start100                     ; else continue
end100:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end107                        ; if cell is zero, don't enter scope
start107:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end108                        ; if cell is zero, don't enter scope
start108:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end108                        ; if cell is zero jump to end
        JMP start108                     ; else continue
end108:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end107                        ; if cell is zero jump to end
        JMP start107                     ; else continue
end107:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end91                        ; if cell is zero jump to end
        JMP start91                     ; else continue
end91:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end109                        ; if cell is zero, don't enter scope
start109:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end109                        ; if cell is zero jump to end
        JMP start109                     ; else continue
end109:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end110                        ; if cell is zero, don't enter scope
start110:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end110                        ; if cell is zero jump to end
        JMP start110                     ; else continue
end110:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 26                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end111                        ; if cell is zero, don't enter scope
start111:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end111                        ; if cell is zero jump to end
        JMP start111                     ; else continue
end111:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end112                        ; if cell is zero, don't enter scope
start112:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end113                        ; if cell is zero, don't enter scope
start113:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end113                        ; if cell is zero jump to end
        JMP start113                     ; else continue
end113:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end112                        ; if cell is zero jump to end
        JMP start112                     ; else continue
end112:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end114                        ; if cell is zero, don't enter scope
start114:
                
            
        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end115                        ; if cell is zero, don't enter scope
start115:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end116                        ; if cell is zero, don't enter scope
start116:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end116                        ; if cell is zero jump to end
        JMP start116                     ; else continue
end116:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end115                        ; if cell is zero jump to end
        JMP start115                     ; else continue
end115:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end117                        ; if cell is zero, don't enter scope
start117:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end118                        ; if cell is zero, don't enter scope
start118:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end118                        ; if cell is zero jump to end
        JMP start118                     ; else continue
end118:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end117                        ; if cell is zero jump to end
        JMP start117                     ; else continue
end117:        
        
        add ebx, 13                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end119                        ; if cell is zero, don't enter scope
start119:
                
            
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end120                        ; if cell is zero, don't enter scope
start120:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end120                        ; if cell is zero jump to end
        JMP start120                     ; else continue
end120:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end121                        ; if cell is zero, don't enter scope
start121:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end121                        ; if cell is zero jump to end
        JMP start121                     ; else continue
end121:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end122                        ; if cell is zero, don't enter scope
start122:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end122                        ; if cell is zero jump to end
        JMP start122                     ; else continue
end122:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end119                        ; if cell is zero jump to end
        JMP start119                     ; else continue
end119:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end123                        ; if cell is zero, don't enter scope
start123:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end123                        ; if cell is zero jump to end
        JMP start123                     ; else continue
end123:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end124                        ; if cell is zero, don't enter scope
start124:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end124                        ; if cell is zero jump to end
        JMP start124                     ; else continue
end124:        
        
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end125                        ; if cell is zero, don't enter scope
start125:
                
            
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end126                        ; if cell is zero, don't enter scope
start126:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end126                        ; if cell is zero jump to end
        JMP start126                     ; else continue
end126:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end127                        ; if cell is zero, don't enter scope
start127:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end127                        ; if cell is zero jump to end
        JMP start127                     ; else continue
end127:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end125                        ; if cell is zero jump to end
        JMP start125                     ; else continue
end125:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end128                        ; if cell is zero, don't enter scope
start128:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end128                        ; if cell is zero jump to end
        JMP start128                     ; else continue
end128:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end129                        ; if cell is zero, don't enter scope
start129:
                
            
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end130                        ; if cell is zero, don't enter scope
start130:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 9                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end130                        ; if cell is zero jump to end
        JMP start130                     ; else continue
end130:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end129                        ; if cell is zero jump to end
        JMP start129                     ; else continue
end129:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end131                        ; if cell is zero, don't enter scope
start131:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end131                        ; if cell is zero jump to end
        JMP start131                     ; else continue
end131:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end132                        ; if cell is zero, don't enter scope
start132:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end133                        ; if cell is zero, don't enter scope
start133:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end133                        ; if cell is zero jump to end
        JMP start133                     ; else continue
end133:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end134                        ; if cell is zero, don't enter scope
start134:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end134                        ; if cell is zero jump to end
        JMP start134                     ; else continue
end134:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end135                        ; if cell is zero, don't enter scope
start135:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end135                        ; if cell is zero jump to end
        JMP start135                     ; else continue
end135:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end136                        ; if cell is zero, don't enter scope
start136:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end136                        ; if cell is zero jump to end
        JMP start136                     ; else continue
end136:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end137                        ; if cell is zero, don't enter scope
start137:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end137                        ; if cell is zero jump to end
        JMP start137                     ; else continue
end137:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end138                        ; if cell is zero, don't enter scope
start138:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end138                        ; if cell is zero jump to end
        JMP start138                     ; else continue
end138:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end139                        ; if cell is zero, don't enter scope
start139:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end139                        ; if cell is zero jump to end
        JMP start139                     ; else continue
end139:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end140                        ; if cell is zero, don't enter scope
start140:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end140                        ; if cell is zero jump to end
        JMP start140                     ; else continue
end140:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end141                        ; if cell is zero, don't enter scope
start141:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end141                        ; if cell is zero jump to end
        JMP start141                     ; else continue
end141:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end142                        ; if cell is zero, don't enter scope
start142:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end142                        ; if cell is zero jump to end
        JMP start142                     ; else continue
end142:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end143                        ; if cell is zero, don't enter scope
start143:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end143                        ; if cell is zero jump to end
        JMP start143                     ; else continue
end143:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end132                        ; if cell is zero jump to end
        JMP start132                     ; else continue
end132:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end144                        ; if cell is zero, don't enter scope
start144:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end144                        ; if cell is zero jump to end
        JMP start144                     ; else continue
end144:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end145                        ; if cell is zero, don't enter scope
start145:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end145                        ; if cell is zero jump to end
        JMP start145                     ; else continue
end145:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end146                        ; if cell is zero, don't enter scope
start146:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end147                        ; if cell is zero, don't enter scope
start147:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end147                        ; if cell is zero jump to end
        JMP start147                     ; else continue
end147:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end148                        ; if cell is zero, don't enter scope
start148:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end149                        ; if cell is zero, don't enter scope
start149:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end150                        ; if cell is zero, don't enter scope
start150:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end150                        ; if cell is zero jump to end
        JMP start150                     ; else continue
end150:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end151                        ; if cell is zero, don't enter scope
start151:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end151                        ; if cell is zero jump to end
        JMP start151                     ; else continue
end151:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end149                        ; if cell is zero jump to end
        JMP start149                     ; else continue
end149:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end152                        ; if cell is zero, don't enter scope
start152:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end152                        ; if cell is zero jump to end
        JMP start152                     ; else continue
end152:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end148                        ; if cell is zero jump to end
        JMP start148                     ; else continue
end148:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end153                        ; if cell is zero, don't enter scope
start153:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end153                        ; if cell is zero jump to end
        JMP start153                     ; else continue
end153:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end154                        ; if cell is zero, don't enter scope
start154:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end155                        ; if cell is zero, don't enter scope
start155:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end155                        ; if cell is zero jump to end
        JMP start155                     ; else continue
end155:        
        
        sub ebx, 10                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end154                        ; if cell is zero jump to end
        JMP start154                     ; else continue
end154:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end156                        ; if cell is zero, don't enter scope
start156:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end156                        ; if cell is zero jump to end
        JMP start156                     ; else continue
end156:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end146                        ; if cell is zero jump to end
        JMP start146                     ; else continue
end146:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end157                        ; if cell is zero, don't enter scope
start157:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end158                        ; if cell is zero, don't enter scope
start158:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end158                        ; if cell is zero jump to end
        JMP start158                     ; else continue
end158:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end159                        ; if cell is zero, don't enter scope
start159:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end160                        ; if cell is zero, don't enter scope
start160:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end160                        ; if cell is zero jump to end
        JMP start160                     ; else continue
end160:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end161                        ; if cell is zero, don't enter scope
start161:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end161                        ; if cell is zero jump to end
        JMP start161                     ; else continue
end161:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end159                        ; if cell is zero jump to end
        JMP start159                     ; else continue
end159:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end162                        ; if cell is zero, don't enter scope
start162:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end162                        ; if cell is zero jump to end
        JMP start162                     ; else continue
end162:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end157                        ; if cell is zero jump to end
        JMP start157                     ; else continue
end157:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end163                        ; if cell is zero, don't enter scope
start163:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end164                        ; if cell is zero, don't enter scope
start164:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end164                        ; if cell is zero jump to end
        JMP start164                     ; else continue
end164:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end165                        ; if cell is zero, don't enter scope
start165:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end165                        ; if cell is zero jump to end
        JMP start165                     ; else continue
end165:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end163                        ; if cell is zero jump to end
        JMP start163                     ; else continue
end163:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end166                        ; if cell is zero, don't enter scope
start166:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end166                        ; if cell is zero jump to end
        JMP start166                     ; else continue
end166:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end167                        ; if cell is zero, don't enter scope
start167:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end167                        ; if cell is zero jump to end
        JMP start167                     ; else continue
end167:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end168                        ; if cell is zero, don't enter scope
start168:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end168                        ; if cell is zero jump to end
        JMP start168                     ; else continue
end168:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end169                        ; if cell is zero, don't enter scope
start169:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end170                        ; if cell is zero, don't enter scope
start170:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end170                        ; if cell is zero jump to end
        JMP start170                     ; else continue
end170:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end171                        ; if cell is zero, don't enter scope
start171:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end172                        ; if cell is zero, don't enter scope
start172:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end173                        ; if cell is zero, don't enter scope
start173:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end173                        ; if cell is zero jump to end
        JMP start173                     ; else continue
end173:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end174                        ; if cell is zero, don't enter scope
start174:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end174                        ; if cell is zero jump to end
        JMP start174                     ; else continue
end174:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end172                        ; if cell is zero jump to end
        JMP start172                     ; else continue
end172:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end175                        ; if cell is zero, don't enter scope
start175:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end175                        ; if cell is zero jump to end
        JMP start175                     ; else continue
end175:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end171                        ; if cell is zero jump to end
        JMP start171                     ; else continue
end171:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end176                        ; if cell is zero, don't enter scope
start176:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end176                        ; if cell is zero jump to end
        JMP start176                     ; else continue
end176:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end177                        ; if cell is zero, don't enter scope
start177:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end178                        ; if cell is zero, don't enter scope
start178:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end178                        ; if cell is zero jump to end
        JMP start178                     ; else continue
end178:        
        
        sub ebx, 10                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end177                        ; if cell is zero jump to end
        JMP start177                     ; else continue
end177:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end179                        ; if cell is zero, don't enter scope
start179:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end179                        ; if cell is zero jump to end
        JMP start179                     ; else continue
end179:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end169                        ; if cell is zero jump to end
        JMP start169                     ; else continue
end169:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end180                        ; if cell is zero, don't enter scope
start180:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end181                        ; if cell is zero, don't enter scope
start181:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end181                        ; if cell is zero jump to end
        JMP start181                     ; else continue
end181:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end182                        ; if cell is zero, don't enter scope
start182:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end183                        ; if cell is zero, don't enter scope
start183:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end183                        ; if cell is zero jump to end
        JMP start183                     ; else continue
end183:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end184                        ; if cell is zero, don't enter scope
start184:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end184                        ; if cell is zero jump to end
        JMP start184                     ; else continue
end184:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end182                        ; if cell is zero jump to end
        JMP start182                     ; else continue
end182:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end185                        ; if cell is zero, don't enter scope
start185:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end185                        ; if cell is zero jump to end
        JMP start185                     ; else continue
end185:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end180                        ; if cell is zero jump to end
        JMP start180                     ; else continue
end180:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end186                        ; if cell is zero, don't enter scope
start186:
                
            
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end187                        ; if cell is zero, don't enter scope
start187:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 36                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 36                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end187                        ; if cell is zero jump to end
        JMP start187                     ; else continue
end187:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end186                        ; if cell is zero jump to end
        JMP start186                     ; else continue
end186:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end188                        ; if cell is zero, don't enter scope
start188:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end188                        ; if cell is zero jump to end
        JMP start188                     ; else continue
end188:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end189                        ; if cell is zero, don't enter scope
start189:
                
            
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end190                        ; if cell is zero, don't enter scope
start190:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 36                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 36                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end190                        ; if cell is zero jump to end
        JMP start190                     ; else continue
end190:        
        
        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end189                        ; if cell is zero jump to end
        JMP start189                     ; else continue
end189:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end191                        ; if cell is zero, don't enter scope
start191:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end191                        ; if cell is zero jump to end
        JMP start191                     ; else continue
end191:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end192                        ; if cell is zero, don't enter scope
start192:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end193                        ; if cell is zero, don't enter scope
start193:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end193                        ; if cell is zero jump to end
        JMP start193                     ; else continue
end193:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end194                        ; if cell is zero, don't enter scope
start194:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end194                        ; if cell is zero jump to end
        JMP start194                     ; else continue
end194:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end192                        ; if cell is zero jump to end
        JMP start192                     ; else continue
end192:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end195                        ; if cell is zero, don't enter scope
start195:
                
            
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end196                        ; if cell is zero, don't enter scope
start196:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end196                        ; if cell is zero jump to end
        JMP start196                     ; else continue
end196:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end197                        ; if cell is zero, don't enter scope
start197:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end197                        ; if cell is zero jump to end
        JMP start197                     ; else continue
end197:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end195                        ; if cell is zero jump to end
        JMP start195                     ; else continue
end195:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end198                        ; if cell is zero, don't enter scope
start198:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end198                        ; if cell is zero jump to end
        JMP start198                     ; else continue
end198:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end199                        ; if cell is zero, don't enter scope
start199:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end200                        ; if cell is zero, don't enter scope
start200:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end200                        ; if cell is zero jump to end
        JMP start200                     ; else continue
end200:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end199                        ; if cell is zero jump to end
        JMP start199                     ; else continue
end199:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end201                        ; if cell is zero, don't enter scope
start201:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end201                        ; if cell is zero jump to end
        JMP start201                     ; else continue
end201:        
        
        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end202                        ; if cell is zero, don't enter scope
start202:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end202                        ; if cell is zero jump to end
        JMP start202                     ; else continue
end202:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end203                        ; if cell is zero, don't enter scope
start203:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end204                        ; if cell is zero, don't enter scope
start204:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 2                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end204                        ; if cell is zero jump to end
        JMP start204                     ; else continue
end204:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end205                        ; if cell is zero, don't enter scope
start205:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end205                        ; if cell is zero jump to end
        JMP start205                     ; else continue
end205:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end203                        ; if cell is zero jump to end
        JMP start203                     ; else continue
end203:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end206                        ; if cell is zero, don't enter scope
start206:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end206                        ; if cell is zero jump to end
        JMP start206                     ; else continue
end206:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end207                        ; if cell is zero, don't enter scope
start207:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end207                        ; if cell is zero jump to end
        JMP start207                     ; else continue
end207:        
        
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end208                        ; if cell is zero, don't enter scope
start208:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end208                        ; if cell is zero jump to end
        JMP start208                     ; else continue
end208:        
        
        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end209                        ; if cell is zero, don't enter scope
start209:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end209                        ; if cell is zero jump to end
        JMP start209                     ; else continue
end209:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end210                        ; if cell is zero, don't enter scope
start210:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end211                        ; if cell is zero, don't enter scope
start211:
                
            
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end212                        ; if cell is zero, don't enter scope
start212:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end212                        ; if cell is zero jump to end
        JMP start212                     ; else continue
end212:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end213                        ; if cell is zero, don't enter scope
start213:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end214                        ; if cell is zero, don't enter scope
start214:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end214                        ; if cell is zero jump to end
        JMP start214                     ; else continue
end214:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end215                        ; if cell is zero, don't enter scope
start215:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 12                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end216                        ; if cell is zero, don't enter scope
start216:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end216                        ; if cell is zero jump to end
        JMP start216                     ; else continue
end216:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end217                        ; if cell is zero, don't enter scope
start217:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end217                        ; if cell is zero jump to end
        JMP start217                     ; else continue
end217:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end218                        ; if cell is zero, don't enter scope
start218:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end218                        ; if cell is zero jump to end
        JMP start218                     ; else continue
end218:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end215                        ; if cell is zero jump to end
        JMP start215                     ; else continue
end215:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end213                        ; if cell is zero jump to end
        JMP start213                     ; else continue
end213:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end219                        ; if cell is zero, don't enter scope
start219:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end219                        ; if cell is zero jump to end
        JMP start219                     ; else continue
end219:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end220                        ; if cell is zero, don't enter scope
start220:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end221                        ; if cell is zero, don't enter scope
start221:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end221                        ; if cell is zero jump to end
        JMP start221                     ; else continue
end221:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end222                        ; if cell is zero, don't enter scope
start222:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 11                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end223                        ; if cell is zero, don't enter scope
start223:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end223                        ; if cell is zero jump to end
        JMP start223                     ; else continue
end223:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end224                        ; if cell is zero, don't enter scope
start224:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end224                        ; if cell is zero jump to end
        JMP start224                     ; else continue
end224:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end225                        ; if cell is zero, don't enter scope
start225:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end225                        ; if cell is zero jump to end
        JMP start225                     ; else continue
end225:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end226                        ; if cell is zero, don't enter scope
start226:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end226                        ; if cell is zero jump to end
        JMP start226                     ; else continue
end226:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end222                        ; if cell is zero jump to end
        JMP start222                     ; else continue
end222:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end220                        ; if cell is zero jump to end
        JMP start220                     ; else continue
end220:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end227                        ; if cell is zero, don't enter scope
start227:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end228                        ; if cell is zero, don't enter scope
start228:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end228                        ; if cell is zero jump to end
        JMP start228                     ; else continue
end228:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end227                        ; if cell is zero jump to end
        JMP start227                     ; else continue
end227:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end211                        ; if cell is zero jump to end
        JMP start211                     ; else continue
end211:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end229                        ; if cell is zero, don't enter scope
start229:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end229                        ; if cell is zero jump to end
        JMP start229                     ; else continue
end229:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end230                        ; if cell is zero, don't enter scope
start230:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end230                        ; if cell is zero jump to end
        JMP start230                     ; else continue
end230:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end231                        ; if cell is zero, don't enter scope
start231:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end232                        ; if cell is zero, don't enter scope
start232:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end233                        ; if cell is zero, don't enter scope
start233:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end233                        ; if cell is zero jump to end
        JMP start233                     ; else continue
end233:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end234                        ; if cell is zero, don't enter scope
start234:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end234                        ; if cell is zero jump to end
        JMP start234                     ; else continue
end234:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end232                        ; if cell is zero jump to end
        JMP start232                     ; else continue
end232:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end235                        ; if cell is zero, don't enter scope
start235:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end236                        ; if cell is zero, don't enter scope
start236:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end237                        ; if cell is zero, don't enter scope
start237:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end238                        ; if cell is zero, don't enter scope
start238:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end238                        ; if cell is zero jump to end
        JMP start238                     ; else continue
end238:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end237                        ; if cell is zero jump to end
        JMP start237                     ; else continue
end237:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end239                        ; if cell is zero, don't enter scope
start239:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end239                        ; if cell is zero jump to end
        JMP start239                     ; else continue
end239:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end236                        ; if cell is zero jump to end
        JMP start236                     ; else continue
end236:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end240                        ; if cell is zero, don't enter scope
start240:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end241                        ; if cell is zero, don't enter scope
start241:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end241                        ; if cell is zero jump to end
        JMP start241                     ; else continue
end241:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end240                        ; if cell is zero jump to end
        JMP start240                     ; else continue
end240:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end242                        ; if cell is zero, don't enter scope
start242:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end242                        ; if cell is zero jump to end
        JMP start242                     ; else continue
end242:        
        
        sub ebx, 12                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end235                        ; if cell is zero jump to end
        JMP start235                     ; else continue
end235:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end243                        ; if cell is zero, don't enter scope
start243:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end243                        ; if cell is zero jump to end
        JMP start243                     ; else continue
end243:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end231                        ; if cell is zero jump to end
        JMP start231                     ; else continue
end231:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end244                        ; if cell is zero, don't enter scope
start244:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end244                        ; if cell is zero jump to end
        JMP start244                     ; else continue
end244:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end245                        ; if cell is zero, don't enter scope
start245:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end246                        ; if cell is zero, don't enter scope
start246:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end247                        ; if cell is zero, don't enter scope
start247:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end247                        ; if cell is zero jump to end
        JMP start247                     ; else continue
end247:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end248                        ; if cell is zero, don't enter scope
start248:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end248                        ; if cell is zero jump to end
        JMP start248                     ; else continue
end248:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end246                        ; if cell is zero jump to end
        JMP start246                     ; else continue
end246:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end249                        ; if cell is zero, don't enter scope
start249:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end250                        ; if cell is zero, don't enter scope
start250:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end251                        ; if cell is zero, don't enter scope
start251:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 10                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end252                        ; if cell is zero, don't enter scope
start252:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end252                        ; if cell is zero jump to end
        JMP start252                     ; else continue
end252:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end251                        ; if cell is zero jump to end
        JMP start251                     ; else continue
end251:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end253                        ; if cell is zero, don't enter scope
start253:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 10                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end253                        ; if cell is zero jump to end
        JMP start253                     ; else continue
end253:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end250                        ; if cell is zero jump to end
        JMP start250                     ; else continue
end250:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end254                        ; if cell is zero, don't enter scope
start254:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end255                        ; if cell is zero, don't enter scope
start255:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 10                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end255                        ; if cell is zero jump to end
        JMP start255                     ; else continue
end255:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end254                        ; if cell is zero jump to end
        JMP start254                     ; else continue
end254:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end256                        ; if cell is zero, don't enter scope
start256:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end256                        ; if cell is zero jump to end
        JMP start256                     ; else continue
end256:        
        
        sub ebx, 11                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end249                        ; if cell is zero jump to end
        JMP start249                     ; else continue
end249:        
        
        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end245                        ; if cell is zero jump to end
        JMP start245                     ; else continue
end245:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end210                        ; if cell is zero jump to end
        JMP start210                     ; else continue
end210:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end257                        ; if cell is zero, don't enter scope
start257:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end257                        ; if cell is zero jump to end
        JMP start257                     ; else continue
end257:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end258                        ; if cell is zero, don't enter scope
start258:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end259                        ; if cell is zero, don't enter scope
start259:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end259                        ; if cell is zero jump to end
        JMP start259                     ; else continue
end259:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end260                        ; if cell is zero, don't enter scope
start260:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end261                        ; if cell is zero, don't enter scope
start261:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end262                        ; if cell is zero, don't enter scope
start262:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end263                        ; if cell is zero, don't enter scope
start263:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end263                        ; if cell is zero jump to end
        JMP start263                     ; else continue
end263:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end262                        ; if cell is zero jump to end
        JMP start262                     ; else continue
end262:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end264                        ; if cell is zero, don't enter scope
start264:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end264                        ; if cell is zero jump to end
        JMP start264                     ; else continue
end264:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end261                        ; if cell is zero jump to end
        JMP start261                     ; else continue
end261:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end265                        ; if cell is zero, don't enter scope
start265:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end266                        ; if cell is zero, don't enter scope
start266:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 14                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end266                        ; if cell is zero jump to end
        JMP start266                     ; else continue
end266:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end265                        ; if cell is zero jump to end
        JMP start265                     ; else continue
end265:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end267                        ; if cell is zero, don't enter scope
start267:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end267                        ; if cell is zero jump to end
        JMP start267                     ; else continue
end267:        
        
        sub ebx, 12                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end260                        ; if cell is zero jump to end
        JMP start260                     ; else continue
end260:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end258                        ; if cell is zero jump to end
        JMP start258                     ; else continue
end258:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end268                        ; if cell is zero, don't enter scope
start268:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end268                        ; if cell is zero jump to end
        JMP start268                     ; else continue
end268:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end269                        ; if cell is zero, don't enter scope
start269:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end269                        ; if cell is zero jump to end
        JMP start269                     ; else continue
end269:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end270                        ; if cell is zero, don't enter scope
start270:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end270                        ; if cell is zero jump to end
        JMP start270                     ; else continue
end270:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end271                        ; if cell is zero, don't enter scope
start271:
                
            
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end272                        ; if cell is zero, don't enter scope
start272:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end272                        ; if cell is zero jump to end
        JMP start272                     ; else continue
end272:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end273                        ; if cell is zero, don't enter scope
start273:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end273                        ; if cell is zero jump to end
        JMP start273                     ; else continue
end273:        
        
        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end271                        ; if cell is zero jump to end
        JMP start271                     ; else continue
end271:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end274                        ; if cell is zero, don't enter scope
start274:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end274                        ; if cell is zero jump to end
        JMP start274                     ; else continue
end274:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end275                        ; if cell is zero, don't enter scope
start275:
                
            
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end276                        ; if cell is zero, don't enter scope
start276:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end276                        ; if cell is zero jump to end
        JMP start276                     ; else continue
end276:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end277                        ; if cell is zero, don't enter scope
start277:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end277                        ; if cell is zero jump to end
        JMP start277                     ; else continue
end277:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end275                        ; if cell is zero jump to end
        JMP start275                     ; else continue
end275:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end278                        ; if cell is zero, don't enter scope
start278:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end278                        ; if cell is zero jump to end
        JMP start278                     ; else continue
end278:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end279                        ; if cell is zero, don't enter scope
start279:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end280                        ; if cell is zero, don't enter scope
start280:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end280                        ; if cell is zero jump to end
        JMP start280                     ; else continue
end280:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end281                        ; if cell is zero, don't enter scope
start281:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end281                        ; if cell is zero jump to end
        JMP start281                     ; else continue
end281:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end282                        ; if cell is zero, don't enter scope
start282:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end282                        ; if cell is zero jump to end
        JMP start282                     ; else continue
end282:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end283                        ; if cell is zero, don't enter scope
start283:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end283                        ; if cell is zero jump to end
        JMP start283                     ; else continue
end283:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end284                        ; if cell is zero, don't enter scope
start284:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end284                        ; if cell is zero jump to end
        JMP start284                     ; else continue
end284:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end285                        ; if cell is zero, don't enter scope
start285:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end285                        ; if cell is zero jump to end
        JMP start285                     ; else continue
end285:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end286                        ; if cell is zero, don't enter scope
start286:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end286                        ; if cell is zero jump to end
        JMP start286                     ; else continue
end286:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end287                        ; if cell is zero, don't enter scope
start287:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end287                        ; if cell is zero jump to end
        JMP start287                     ; else continue
end287:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end288                        ; if cell is zero, don't enter scope
start288:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end288                        ; if cell is zero jump to end
        JMP start288                     ; else continue
end288:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end289                        ; if cell is zero, don't enter scope
start289:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end289                        ; if cell is zero jump to end
        JMP start289                     ; else continue
end289:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end290                        ; if cell is zero, don't enter scope
start290:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end290                        ; if cell is zero jump to end
        JMP start290                     ; else continue
end290:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end279                        ; if cell is zero jump to end
        JMP start279                     ; else continue
end279:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end291                        ; if cell is zero, don't enter scope
start291:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end291                        ; if cell is zero jump to end
        JMP start291                     ; else continue
end291:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end292                        ; if cell is zero, don't enter scope
start292:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end292                        ; if cell is zero jump to end
        JMP start292                     ; else continue
end292:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end293                        ; if cell is zero, don't enter scope
start293:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end294                        ; if cell is zero, don't enter scope
start294:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end294                        ; if cell is zero jump to end
        JMP start294                     ; else continue
end294:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end295                        ; if cell is zero, don't enter scope
start295:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end296                        ; if cell is zero, don't enter scope
start296:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end297                        ; if cell is zero, don't enter scope
start297:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end297                        ; if cell is zero jump to end
        JMP start297                     ; else continue
end297:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end298                        ; if cell is zero, don't enter scope
start298:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end298                        ; if cell is zero jump to end
        JMP start298                     ; else continue
end298:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end296                        ; if cell is zero jump to end
        JMP start296                     ; else continue
end296:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end299                        ; if cell is zero, don't enter scope
start299:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end299                        ; if cell is zero jump to end
        JMP start299                     ; else continue
end299:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end295                        ; if cell is zero jump to end
        JMP start295                     ; else continue
end295:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end300                        ; if cell is zero, don't enter scope
start300:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end300                        ; if cell is zero jump to end
        JMP start300                     ; else continue
end300:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end301                        ; if cell is zero, don't enter scope
start301:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end302                        ; if cell is zero, don't enter scope
start302:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end302                        ; if cell is zero jump to end
        JMP start302                     ; else continue
end302:        
        
        sub ebx, 10                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end301                        ; if cell is zero jump to end
        JMP start301                     ; else continue
end301:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end303                        ; if cell is zero, don't enter scope
start303:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end303                        ; if cell is zero jump to end
        JMP start303                     ; else continue
end303:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end293                        ; if cell is zero jump to end
        JMP start293                     ; else continue
end293:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end304                        ; if cell is zero, don't enter scope
start304:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end305                        ; if cell is zero, don't enter scope
start305:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end305                        ; if cell is zero jump to end
        JMP start305                     ; else continue
end305:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end306                        ; if cell is zero, don't enter scope
start306:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end307                        ; if cell is zero, don't enter scope
start307:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end307                        ; if cell is zero jump to end
        JMP start307                     ; else continue
end307:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end308                        ; if cell is zero, don't enter scope
start308:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end308                        ; if cell is zero jump to end
        JMP start308                     ; else continue
end308:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end306                        ; if cell is zero jump to end
        JMP start306                     ; else continue
end306:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end309                        ; if cell is zero, don't enter scope
start309:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end309                        ; if cell is zero jump to end
        JMP start309                     ; else continue
end309:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end304                        ; if cell is zero jump to end
        JMP start304                     ; else continue
end304:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end310                        ; if cell is zero, don't enter scope
start310:
                
            
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end311                        ; if cell is zero, don't enter scope
start311:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 36                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 36                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end311                        ; if cell is zero jump to end
        JMP start311                     ; else continue
end311:        
        
        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end310                        ; if cell is zero jump to end
        JMP start310                     ; else continue
end310:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end312                        ; if cell is zero, don't enter scope
start312:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end312                        ; if cell is zero jump to end
        JMP start312                     ; else continue
end312:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end313                        ; if cell is zero, don't enter scope
start313:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end313                        ; if cell is zero jump to end
        JMP start313                     ; else continue
end313:        
        
        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end314                        ; if cell is zero, don't enter scope
start314:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end315                        ; if cell is zero, don't enter scope
start315:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end315                        ; if cell is zero jump to end
        JMP start315                     ; else continue
end315:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end316                        ; if cell is zero, don't enter scope
start316:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end316                        ; if cell is zero jump to end
        JMP start316                     ; else continue
end316:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end314                        ; if cell is zero jump to end
        JMP start314                     ; else continue
end314:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end317                        ; if cell is zero, don't enter scope
start317:
                
            
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end318                        ; if cell is zero, don't enter scope
start318:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end318                        ; if cell is zero jump to end
        JMP start318                     ; else continue
end318:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end319                        ; if cell is zero, don't enter scope
start319:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end320                        ; if cell is zero, don't enter scope
start320:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end320                        ; if cell is zero jump to end
        JMP start320                     ; else continue
end320:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end321                        ; if cell is zero, don't enter scope
start321:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 13                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end322                        ; if cell is zero, don't enter scope
start322:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end322                        ; if cell is zero jump to end
        JMP start322                     ; else continue
end322:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end323                        ; if cell is zero, don't enter scope
start323:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end323                        ; if cell is zero jump to end
        JMP start323                     ; else continue
end323:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end324                        ; if cell is zero, don't enter scope
start324:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end324                        ; if cell is zero jump to end
        JMP start324                     ; else continue
end324:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end321                        ; if cell is zero jump to end
        JMP start321                     ; else continue
end321:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end319                        ; if cell is zero jump to end
        JMP start319                     ; else continue
end319:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end325                        ; if cell is zero, don't enter scope
start325:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end325                        ; if cell is zero jump to end
        JMP start325                     ; else continue
end325:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end326                        ; if cell is zero, don't enter scope
start326:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end327                        ; if cell is zero, don't enter scope
start327:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end327                        ; if cell is zero jump to end
        JMP start327                     ; else continue
end327:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end328                        ; if cell is zero, don't enter scope
start328:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 12                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end329                        ; if cell is zero, don't enter scope
start329:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end329                        ; if cell is zero jump to end
        JMP start329                     ; else continue
end329:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end330                        ; if cell is zero, don't enter scope
start330:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end330                        ; if cell is zero jump to end
        JMP start330                     ; else continue
end330:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end331                        ; if cell is zero, don't enter scope
start331:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end331                        ; if cell is zero jump to end
        JMP start331                     ; else continue
end331:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end332                        ; if cell is zero, don't enter scope
start332:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end332                        ; if cell is zero jump to end
        JMP start332                     ; else continue
end332:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end328                        ; if cell is zero jump to end
        JMP start328                     ; else continue
end328:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end326                        ; if cell is zero jump to end
        JMP start326                     ; else continue
end326:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end333                        ; if cell is zero, don't enter scope
start333:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end334                        ; if cell is zero, don't enter scope
start334:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end334                        ; if cell is zero jump to end
        JMP start334                     ; else continue
end334:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end333                        ; if cell is zero jump to end
        JMP start333                     ; else continue
end333:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end317                        ; if cell is zero jump to end
        JMP start317                     ; else continue
end317:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end335                        ; if cell is zero, don't enter scope
start335:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end335                        ; if cell is zero jump to end
        JMP start335                     ; else continue
end335:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end336                        ; if cell is zero, don't enter scope
start336:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end336                        ; if cell is zero jump to end
        JMP start336                     ; else continue
end336:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end337                        ; if cell is zero, don't enter scope
start337:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end338                        ; if cell is zero, don't enter scope
start338:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end339                        ; if cell is zero, don't enter scope
start339:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end339                        ; if cell is zero jump to end
        JMP start339                     ; else continue
end339:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end340                        ; if cell is zero, don't enter scope
start340:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end340                        ; if cell is zero jump to end
        JMP start340                     ; else continue
end340:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end338                        ; if cell is zero jump to end
        JMP start338                     ; else continue
end338:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end341                        ; if cell is zero, don't enter scope
start341:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end342                        ; if cell is zero, don't enter scope
start342:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end343                        ; if cell is zero, don't enter scope
start343:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 10                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 12                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end344                        ; if cell is zero, don't enter scope
start344:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end344                        ; if cell is zero jump to end
        JMP start344                     ; else continue
end344:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end343                        ; if cell is zero jump to end
        JMP start343                     ; else continue
end343:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end345                        ; if cell is zero, don't enter scope
start345:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 10                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 12                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end345                        ; if cell is zero jump to end
        JMP start345                     ; else continue
end345:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end342                        ; if cell is zero jump to end
        JMP start342                     ; else continue
end342:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end346                        ; if cell is zero, don't enter scope
start346:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end347                        ; if cell is zero, don't enter scope
start347:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 10                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 12                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end347                        ; if cell is zero jump to end
        JMP start347                     ; else continue
end347:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end346                        ; if cell is zero jump to end
        JMP start346                     ; else continue
end346:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end348                        ; if cell is zero, don't enter scope
start348:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end348                        ; if cell is zero jump to end
        JMP start348                     ; else continue
end348:        
        
        sub ebx, 13                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end341                        ; if cell is zero jump to end
        JMP start341                     ; else continue
end341:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end337                        ; if cell is zero jump to end
        JMP start337                     ; else continue
end337:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end349                        ; if cell is zero, don't enter scope
start349:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end349                        ; if cell is zero jump to end
        JMP start349                     ; else continue
end349:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end350                        ; if cell is zero, don't enter scope
start350:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end351                        ; if cell is zero, don't enter scope
start351:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end352                        ; if cell is zero, don't enter scope
start352:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end352                        ; if cell is zero jump to end
        JMP start352                     ; else continue
end352:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end353                        ; if cell is zero, don't enter scope
start353:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end353                        ; if cell is zero jump to end
        JMP start353                     ; else continue
end353:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end351                        ; if cell is zero jump to end
        JMP start351                     ; else continue
end351:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end354                        ; if cell is zero, don't enter scope
start354:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end355                        ; if cell is zero, don't enter scope
start355:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end356                        ; if cell is zero, don't enter scope
start356:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 10                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end357                        ; if cell is zero, don't enter scope
start357:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end357                        ; if cell is zero jump to end
        JMP start357                     ; else continue
end357:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end356                        ; if cell is zero jump to end
        JMP start356                     ; else continue
end356:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end358                        ; if cell is zero, don't enter scope
start358:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 10                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end358                        ; if cell is zero jump to end
        JMP start358                     ; else continue
end358:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end355                        ; if cell is zero jump to end
        JMP start355                     ; else continue
end355:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end359                        ; if cell is zero, don't enter scope
start359:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end360                        ; if cell is zero, don't enter scope
start360:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 10                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end360                        ; if cell is zero jump to end
        JMP start360                     ; else continue
end360:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end359                        ; if cell is zero jump to end
        JMP start359                     ; else continue
end359:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end361                        ; if cell is zero, don't enter scope
start361:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end361                        ; if cell is zero jump to end
        JMP start361                     ; else continue
end361:        
        
        sub ebx, 12                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end354                        ; if cell is zero jump to end
        JMP start354                     ; else continue
end354:        
        
        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end350                        ; if cell is zero jump to end
        JMP start350                     ; else continue
end350:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end362                        ; if cell is zero, don't enter scope
start362:
                
            
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end363                        ; if cell is zero, don't enter scope
start363:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end363                        ; if cell is zero jump to end
        JMP start363                     ; else continue
end363:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end364                        ; if cell is zero, don't enter scope
start364:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end364                        ; if cell is zero jump to end
        JMP start364                     ; else continue
end364:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end365                        ; if cell is zero, don't enter scope
start365:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end365                        ; if cell is zero jump to end
        JMP start365                     ; else continue
end365:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end362                        ; if cell is zero jump to end
        JMP start362                     ; else continue
end362:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end366                        ; if cell is zero, don't enter scope
start366:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end366                        ; if cell is zero jump to end
        JMP start366                     ; else continue
end366:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end367                        ; if cell is zero, don't enter scope
start367:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end367                        ; if cell is zero jump to end
        JMP start367                     ; else continue
end367:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end368                        ; if cell is zero, don't enter scope
start368:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end368                        ; if cell is zero jump to end
        JMP start368                     ; else continue
end368:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end369                        ; if cell is zero, don't enter scope
start369:
                
            
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end370                        ; if cell is zero, don't enter scope
start370:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end370                        ; if cell is zero jump to end
        JMP start370                     ; else continue
end370:        
        
        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end371                        ; if cell is zero, don't enter scope
start371:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end371                        ; if cell is zero jump to end
        JMP start371                     ; else continue
end371:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end369                        ; if cell is zero jump to end
        JMP start369                     ; else continue
end369:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end372                        ; if cell is zero, don't enter scope
start372:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end372                        ; if cell is zero jump to end
        JMP start372                     ; else continue
end372:        
        
        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end373                        ; if cell is zero, don't enter scope
start373:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end373                        ; if cell is zero jump to end
        JMP start373                     ; else continue
end373:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end374                        ; if cell is zero, don't enter scope
start374:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end375                        ; if cell is zero, don't enter scope
start375:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 2                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end375                        ; if cell is zero jump to end
        JMP start375                     ; else continue
end375:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end376                        ; if cell is zero, don't enter scope
start376:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end376                        ; if cell is zero jump to end
        JMP start376                     ; else continue
end376:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end374                        ; if cell is zero jump to end
        JMP start374                     ; else continue
end374:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end377                        ; if cell is zero, don't enter scope
start377:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end377                        ; if cell is zero jump to end
        JMP start377                     ; else continue
end377:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end378                        ; if cell is zero, don't enter scope
start378:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end378                        ; if cell is zero jump to end
        JMP start378                     ; else continue
end378:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end379                        ; if cell is zero, don't enter scope
start379:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end379                        ; if cell is zero jump to end
        JMP start379                     ; else continue
end379:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end380                        ; if cell is zero, don't enter scope
start380:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end381                        ; if cell is zero, don't enter scope
start381:
                
            
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end382                        ; if cell is zero, don't enter scope
start382:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end382                        ; if cell is zero jump to end
        JMP start382                     ; else continue
end382:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end383                        ; if cell is zero, don't enter scope
start383:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end384                        ; if cell is zero, don't enter scope
start384:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end384                        ; if cell is zero jump to end
        JMP start384                     ; else continue
end384:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end385                        ; if cell is zero, don't enter scope
start385:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 11                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end386                        ; if cell is zero, don't enter scope
start386:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end386                        ; if cell is zero jump to end
        JMP start386                     ; else continue
end386:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end387                        ; if cell is zero, don't enter scope
start387:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end387                        ; if cell is zero jump to end
        JMP start387                     ; else continue
end387:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end388                        ; if cell is zero, don't enter scope
start388:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end388                        ; if cell is zero jump to end
        JMP start388                     ; else continue
end388:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end385                        ; if cell is zero jump to end
        JMP start385                     ; else continue
end385:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end383                        ; if cell is zero jump to end
        JMP start383                     ; else continue
end383:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end389                        ; if cell is zero, don't enter scope
start389:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end389                        ; if cell is zero jump to end
        JMP start389                     ; else continue
end389:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end390                        ; if cell is zero, don't enter scope
start390:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end391                        ; if cell is zero, don't enter scope
start391:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end391                        ; if cell is zero jump to end
        JMP start391                     ; else continue
end391:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end392                        ; if cell is zero, don't enter scope
start392:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 12                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end393                        ; if cell is zero, don't enter scope
start393:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end393                        ; if cell is zero jump to end
        JMP start393                     ; else continue
end393:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end394                        ; if cell is zero, don't enter scope
start394:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end394                        ; if cell is zero jump to end
        JMP start394                     ; else continue
end394:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end395                        ; if cell is zero, don't enter scope
start395:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end395                        ; if cell is zero jump to end
        JMP start395                     ; else continue
end395:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end396                        ; if cell is zero, don't enter scope
start396:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end396                        ; if cell is zero jump to end
        JMP start396                     ; else continue
end396:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end392                        ; if cell is zero jump to end
        JMP start392                     ; else continue
end392:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end390                        ; if cell is zero jump to end
        JMP start390                     ; else continue
end390:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end397                        ; if cell is zero, don't enter scope
start397:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end398                        ; if cell is zero, don't enter scope
start398:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end398                        ; if cell is zero jump to end
        JMP start398                     ; else continue
end398:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end397                        ; if cell is zero jump to end
        JMP start397                     ; else continue
end397:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end381                        ; if cell is zero jump to end
        JMP start381                     ; else continue
end381:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end399                        ; if cell is zero, don't enter scope
start399:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end399                        ; if cell is zero jump to end
        JMP start399                     ; else continue
end399:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end400                        ; if cell is zero, don't enter scope
start400:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end400                        ; if cell is zero jump to end
        JMP start400                     ; else continue
end400:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end401                        ; if cell is zero, don't enter scope
start401:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end402                        ; if cell is zero, don't enter scope
start402:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end403                        ; if cell is zero, don't enter scope
start403:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end403                        ; if cell is zero jump to end
        JMP start403                     ; else continue
end403:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end404                        ; if cell is zero, don't enter scope
start404:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end404                        ; if cell is zero jump to end
        JMP start404                     ; else continue
end404:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end402                        ; if cell is zero jump to end
        JMP start402                     ; else continue
end402:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end405                        ; if cell is zero, don't enter scope
start405:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end406                        ; if cell is zero, don't enter scope
start406:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end407                        ; if cell is zero, don't enter scope
start407:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 10                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end408                        ; if cell is zero, don't enter scope
start408:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end408                        ; if cell is zero jump to end
        JMP start408                     ; else continue
end408:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end407                        ; if cell is zero jump to end
        JMP start407                     ; else continue
end407:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end409                        ; if cell is zero, don't enter scope
start409:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 10                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end409                        ; if cell is zero jump to end
        JMP start409                     ; else continue
end409:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end406                        ; if cell is zero jump to end
        JMP start406                     ; else continue
end406:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end410                        ; if cell is zero, don't enter scope
start410:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end411                        ; if cell is zero, don't enter scope
start411:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 10                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end411                        ; if cell is zero jump to end
        JMP start411                     ; else continue
end411:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end410                        ; if cell is zero jump to end
        JMP start410                     ; else continue
end410:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end412                        ; if cell is zero, don't enter scope
start412:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end412                        ; if cell is zero jump to end
        JMP start412                     ; else continue
end412:        
        
        sub ebx, 11                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end405                        ; if cell is zero jump to end
        JMP start405                     ; else continue
end405:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end413                        ; if cell is zero, don't enter scope
start413:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end413                        ; if cell is zero jump to end
        JMP start413                     ; else continue
end413:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end414                        ; if cell is zero, don't enter scope
start414:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end414                        ; if cell is zero jump to end
        JMP start414                     ; else continue
end414:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end415                        ; if cell is zero, don't enter scope
start415:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end415                        ; if cell is zero jump to end
        JMP start415                     ; else continue
end415:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end401                        ; if cell is zero jump to end
        JMP start401                     ; else continue
end401:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end416                        ; if cell is zero, don't enter scope
start416:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end416                        ; if cell is zero jump to end
        JMP start416                     ; else continue
end416:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end417                        ; if cell is zero, don't enter scope
start417:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end418                        ; if cell is zero, don't enter scope
start418:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end419                        ; if cell is zero, don't enter scope
start419:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end419                        ; if cell is zero jump to end
        JMP start419                     ; else continue
end419:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end420                        ; if cell is zero, don't enter scope
start420:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end420                        ; if cell is zero jump to end
        JMP start420                     ; else continue
end420:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end418                        ; if cell is zero jump to end
        JMP start418                     ; else continue
end418:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end421                        ; if cell is zero, don't enter scope
start421:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end422                        ; if cell is zero, don't enter scope
start422:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end423                        ; if cell is zero, don't enter scope
start423:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end424                        ; if cell is zero, don't enter scope
start424:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end424                        ; if cell is zero jump to end
        JMP start424                     ; else continue
end424:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end423                        ; if cell is zero jump to end
        JMP start423                     ; else continue
end423:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end425                        ; if cell is zero, don't enter scope
start425:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end425                        ; if cell is zero jump to end
        JMP start425                     ; else continue
end425:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end422                        ; if cell is zero jump to end
        JMP start422                     ; else continue
end422:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end426                        ; if cell is zero, don't enter scope
start426:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end427                        ; if cell is zero, don't enter scope
start427:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end427                        ; if cell is zero jump to end
        JMP start427                     ; else continue
end427:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end426                        ; if cell is zero jump to end
        JMP start426                     ; else continue
end426:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end428                        ; if cell is zero, don't enter scope
start428:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end428                        ; if cell is zero jump to end
        JMP start428                     ; else continue
end428:        
        
        sub ebx, 12                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end421                        ; if cell is zero jump to end
        JMP start421                     ; else continue
end421:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end417                        ; if cell is zero jump to end
        JMP start417                     ; else continue
end417:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end429                        ; if cell is zero, don't enter scope
start429:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end429                        ; if cell is zero jump to end
        JMP start429                     ; else continue
end429:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end380                        ; if cell is zero jump to end
        JMP start380                     ; else continue
end380:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end430                        ; if cell is zero, don't enter scope
start430:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end430                        ; if cell is zero jump to end
        JMP start430                     ; else continue
end430:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end431                        ; if cell is zero, don't enter scope
start431:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end432                        ; if cell is zero, don't enter scope
start432:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end432                        ; if cell is zero jump to end
        JMP start432                     ; else continue
end432:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end433                        ; if cell is zero, don't enter scope
start433:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end433                        ; if cell is zero jump to end
        JMP start433                     ; else continue
end433:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end434                        ; if cell is zero, don't enter scope
start434:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end434                        ; if cell is zero jump to end
        JMP start434                     ; else continue
end434:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end435                        ; if cell is zero, don't enter scope
start435:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end435                        ; if cell is zero jump to end
        JMP start435                     ; else continue
end435:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end436                        ; if cell is zero, don't enter scope
start436:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end437                        ; if cell is zero, don't enter scope
start437:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end438                        ; if cell is zero, don't enter scope
start438:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end439                        ; if cell is zero, don't enter scope
start439:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end439                        ; if cell is zero jump to end
        JMP start439                     ; else continue
end439:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end438                        ; if cell is zero jump to end
        JMP start438                     ; else continue
end438:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end440                        ; if cell is zero, don't enter scope
start440:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end440                        ; if cell is zero jump to end
        JMP start440                     ; else continue
end440:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end437                        ; if cell is zero jump to end
        JMP start437                     ; else continue
end437:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end441                        ; if cell is zero, don't enter scope
start441:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end442                        ; if cell is zero, don't enter scope
start442:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 13                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 11                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end442                        ; if cell is zero jump to end
        JMP start442                     ; else continue
end442:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end441                        ; if cell is zero jump to end
        JMP start441                     ; else continue
end441:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end443                        ; if cell is zero, don't enter scope
start443:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end443                        ; if cell is zero jump to end
        JMP start443                     ; else continue
end443:        
        
        sub ebx, 12                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end436                        ; if cell is zero jump to end
        JMP start436                     ; else continue
end436:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end431                        ; if cell is zero jump to end
        JMP start431                     ; else continue
end431:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end444                        ; if cell is zero, don't enter scope
start444:
                
            
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end445                        ; if cell is zero, don't enter scope
start445:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end445                        ; if cell is zero jump to end
        JMP start445                     ; else continue
end445:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end446                        ; if cell is zero, don't enter scope
start446:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end446                        ; if cell is zero jump to end
        JMP start446                     ; else continue
end446:        
        
        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end444                        ; if cell is zero jump to end
        JMP start444                     ; else continue
end444:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end447                        ; if cell is zero, don't enter scope
start447:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end447                        ; if cell is zero jump to end
        JMP start447                     ; else continue
end447:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end448                        ; if cell is zero, don't enter scope
start448:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end448                        ; if cell is zero jump to end
        JMP start448                     ; else continue
end448:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end449                        ; if cell is zero, don't enter scope
start449:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end449                        ; if cell is zero jump to end
        JMP start449                     ; else continue
end449:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end450                        ; if cell is zero, don't enter scope
start450:
                
            
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end451                        ; if cell is zero, don't enter scope
start451:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end451                        ; if cell is zero jump to end
        JMP start451                     ; else continue
end451:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end452                        ; if cell is zero, don't enter scope
start452:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end452                        ; if cell is zero jump to end
        JMP start452                     ; else continue
end452:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end450                        ; if cell is zero jump to end
        JMP start450                     ; else continue
end450:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end453                        ; if cell is zero, don't enter scope
start453:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end453                        ; if cell is zero jump to end
        JMP start453                     ; else continue
end453:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end454                        ; if cell is zero, don't enter scope
start454:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end455                        ; if cell is zero, don't enter scope
start455:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end455                        ; if cell is zero jump to end
        JMP start455                     ; else continue
end455:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end456                        ; if cell is zero, don't enter scope
start456:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end456                        ; if cell is zero jump to end
        JMP start456                     ; else continue
end456:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end454                        ; if cell is zero jump to end
        JMP start454                     ; else continue
end454:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end457                        ; if cell is zero, don't enter scope
start457:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end457                        ; if cell is zero jump to end
        JMP start457                     ; else continue
end457:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end458                        ; if cell is zero, don't enter scope
start458:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end459                        ; if cell is zero, don't enter scope
start459:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end459                        ; if cell is zero jump to end
        JMP start459                     ; else continue
end459:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end460                        ; if cell is zero, don't enter scope
start460:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end460                        ; if cell is zero jump to end
        JMP start460                     ; else continue
end460:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end461                        ; if cell is zero, don't enter scope
start461:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end461                        ; if cell is zero jump to end
        JMP start461                     ; else continue
end461:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end462                        ; if cell is zero, don't enter scope
start462:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end462                        ; if cell is zero jump to end
        JMP start462                     ; else continue
end462:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end463                        ; if cell is zero, don't enter scope
start463:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end463                        ; if cell is zero jump to end
        JMP start463                     ; else continue
end463:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end464                        ; if cell is zero, don't enter scope
start464:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end464                        ; if cell is zero jump to end
        JMP start464                     ; else continue
end464:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end465                        ; if cell is zero, don't enter scope
start465:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end465                        ; if cell is zero jump to end
        JMP start465                     ; else continue
end465:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end466                        ; if cell is zero, don't enter scope
start466:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end466                        ; if cell is zero jump to end
        JMP start466                     ; else continue
end466:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end467                        ; if cell is zero, don't enter scope
start467:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end467                        ; if cell is zero jump to end
        JMP start467                     ; else continue
end467:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end468                        ; if cell is zero, don't enter scope
start468:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end468                        ; if cell is zero jump to end
        JMP start468                     ; else continue
end468:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end469                        ; if cell is zero, don't enter scope
start469:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end469                        ; if cell is zero jump to end
        JMP start469                     ; else continue
end469:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end458                        ; if cell is zero jump to end
        JMP start458                     ; else continue
end458:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end470                        ; if cell is zero, don't enter scope
start470:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end470                        ; if cell is zero jump to end
        JMP start470                     ; else continue
end470:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end471                        ; if cell is zero, don't enter scope
start471:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end471                        ; if cell is zero jump to end
        JMP start471                     ; else continue
end471:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end472                        ; if cell is zero, don't enter scope
start472:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end473                        ; if cell is zero, don't enter scope
start473:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end473                        ; if cell is zero jump to end
        JMP start473                     ; else continue
end473:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end474                        ; if cell is zero, don't enter scope
start474:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end475                        ; if cell is zero, don't enter scope
start475:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end476                        ; if cell is zero, don't enter scope
start476:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end476                        ; if cell is zero jump to end
        JMP start476                     ; else continue
end476:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end477                        ; if cell is zero, don't enter scope
start477:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end477                        ; if cell is zero jump to end
        JMP start477                     ; else continue
end477:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end475                        ; if cell is zero jump to end
        JMP start475                     ; else continue
end475:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end478                        ; if cell is zero, don't enter scope
start478:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end478                        ; if cell is zero jump to end
        JMP start478                     ; else continue
end478:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end474                        ; if cell is zero jump to end
        JMP start474                     ; else continue
end474:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end479                        ; if cell is zero, don't enter scope
start479:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end479                        ; if cell is zero jump to end
        JMP start479                     ; else continue
end479:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end480                        ; if cell is zero, don't enter scope
start480:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end481                        ; if cell is zero, don't enter scope
start481:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end481                        ; if cell is zero jump to end
        JMP start481                     ; else continue
end481:        
        
        sub ebx, 10                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end480                        ; if cell is zero jump to end
        JMP start480                     ; else continue
end480:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end482                        ; if cell is zero, don't enter scope
start482:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end482                        ; if cell is zero jump to end
        JMP start482                     ; else continue
end482:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end472                        ; if cell is zero jump to end
        JMP start472                     ; else continue
end472:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end483                        ; if cell is zero, don't enter scope
start483:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end484                        ; if cell is zero, don't enter scope
start484:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end484                        ; if cell is zero jump to end
        JMP start484                     ; else continue
end484:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end485                        ; if cell is zero, don't enter scope
start485:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end486                        ; if cell is zero, don't enter scope
start486:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end486                        ; if cell is zero jump to end
        JMP start486                     ; else continue
end486:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end487                        ; if cell is zero, don't enter scope
start487:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end487                        ; if cell is zero jump to end
        JMP start487                     ; else continue
end487:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end485                        ; if cell is zero jump to end
        JMP start485                     ; else continue
end485:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end488                        ; if cell is zero, don't enter scope
start488:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end488                        ; if cell is zero jump to end
        JMP start488                     ; else continue
end488:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end483                        ; if cell is zero jump to end
        JMP start483                     ; else continue
end483:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end489                        ; if cell is zero, don't enter scope
start489:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end489                        ; if cell is zero jump to end
        JMP start489                     ; else continue
end489:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end490                        ; if cell is zero, don't enter scope
start490:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end490                        ; if cell is zero jump to end
        JMP start490                     ; else continue
end490:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end491                        ; if cell is zero, don't enter scope
start491:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end492                        ; if cell is zero, don't enter scope
start492:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end492                        ; if cell is zero jump to end
        JMP start492                     ; else continue
end492:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end493                        ; if cell is zero, don't enter scope
start493:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end494                        ; if cell is zero, don't enter scope
start494:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end495                        ; if cell is zero, don't enter scope
start495:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end495                        ; if cell is zero jump to end
        JMP start495                     ; else continue
end495:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end496                        ; if cell is zero, don't enter scope
start496:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end496                        ; if cell is zero jump to end
        JMP start496                     ; else continue
end496:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end494                        ; if cell is zero jump to end
        JMP start494                     ; else continue
end494:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end497                        ; if cell is zero, don't enter scope
start497:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end497                        ; if cell is zero jump to end
        JMP start497                     ; else continue
end497:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end493                        ; if cell is zero jump to end
        JMP start493                     ; else continue
end493:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end498                        ; if cell is zero, don't enter scope
start498:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end498                        ; if cell is zero jump to end
        JMP start498                     ; else continue
end498:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end499                        ; if cell is zero, don't enter scope
start499:
                
            
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end500                        ; if cell is zero, don't enter scope
start500:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end500                        ; if cell is zero jump to end
        JMP start500                     ; else continue
end500:        
        
        sub ebx, 11                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end499                        ; if cell is zero jump to end
        JMP start499                     ; else continue
end499:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end501                        ; if cell is zero, don't enter scope
start501:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end501                        ; if cell is zero jump to end
        JMP start501                     ; else continue
end501:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end491                        ; if cell is zero jump to end
        JMP start491                     ; else continue
end491:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end502                        ; if cell is zero, don't enter scope
start502:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end503                        ; if cell is zero, don't enter scope
start503:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end503                        ; if cell is zero jump to end
        JMP start503                     ; else continue
end503:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end504                        ; if cell is zero, don't enter scope
start504:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end505                        ; if cell is zero, don't enter scope
start505:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end505                        ; if cell is zero jump to end
        JMP start505                     ; else continue
end505:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end506                        ; if cell is zero, don't enter scope
start506:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end506                        ; if cell is zero jump to end
        JMP start506                     ; else continue
end506:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end504                        ; if cell is zero jump to end
        JMP start504                     ; else continue
end504:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end507                        ; if cell is zero, don't enter scope
start507:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end507                        ; if cell is zero jump to end
        JMP start507                     ; else continue
end507:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end502                        ; if cell is zero jump to end
        JMP start502                     ; else continue
end502:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end508                        ; if cell is zero, don't enter scope
start508:
                
            
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end509                        ; if cell is zero, don't enter scope
start509:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 36                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 36                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end509                        ; if cell is zero jump to end
        JMP start509                     ; else continue
end509:        
        
        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end508                        ; if cell is zero jump to end
        JMP start508                     ; else continue
end508:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end510                        ; if cell is zero, don't enter scope
start510:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end510                        ; if cell is zero jump to end
        JMP start510                     ; else continue
end510:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 15                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end511                        ; if cell is zero, don't enter scope
start511:
                
            
; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end512                        ; if cell is zero, don't enter scope
start512:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end512                        ; if cell is zero jump to end
        JMP start512                     ; else continue
end512:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end513                        ; if cell is zero, don't enter scope
start513:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end513                        ; if cell is zero jump to end
        JMP start513                     ; else continue
end513:        
        
        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end511                        ; if cell is zero jump to end
        JMP start511                     ; else continue
end511:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 21                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end514                        ; if cell is zero, don't enter scope
start514:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end514                        ; if cell is zero jump to end
        JMP start514                     ; else continue
end514:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end515                        ; if cell is zero, don't enter scope
start515:
                
            
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end516                        ; if cell is zero, don't enter scope
start516:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end516                        ; if cell is zero jump to end
        JMP start516                     ; else continue
end516:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end517                        ; if cell is zero, don't enter scope
start517:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end518                        ; if cell is zero, don't enter scope
start518:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end518                        ; if cell is zero jump to end
        JMP start518                     ; else continue
end518:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end519                        ; if cell is zero, don't enter scope
start519:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 13                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end520                        ; if cell is zero, don't enter scope
start520:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end520                        ; if cell is zero jump to end
        JMP start520                     ; else continue
end520:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end521                        ; if cell is zero, don't enter scope
start521:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end521                        ; if cell is zero jump to end
        JMP start521                     ; else continue
end521:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end522                        ; if cell is zero, don't enter scope
start522:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end522                        ; if cell is zero jump to end
        JMP start522                     ; else continue
end522:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end519                        ; if cell is zero jump to end
        JMP start519                     ; else continue
end519:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end517                        ; if cell is zero jump to end
        JMP start517                     ; else continue
end517:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end523                        ; if cell is zero, don't enter scope
start523:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end523                        ; if cell is zero jump to end
        JMP start523                     ; else continue
end523:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end524                        ; if cell is zero, don't enter scope
start524:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end525                        ; if cell is zero, don't enter scope
start525:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end525                        ; if cell is zero jump to end
        JMP start525                     ; else continue
end525:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end526                        ; if cell is zero, don't enter scope
start526:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 3                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 12                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end527                        ; if cell is zero, don't enter scope
start527:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end527                        ; if cell is zero jump to end
        JMP start527                     ; else continue
end527:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end528                        ; if cell is zero, don't enter scope
start528:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end528                        ; if cell is zero jump to end
        JMP start528                     ; else continue
end528:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end529                        ; if cell is zero, don't enter scope
start529:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end529                        ; if cell is zero jump to end
        JMP start529                     ; else continue
end529:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end530                        ; if cell is zero, don't enter scope
start530:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end530                        ; if cell is zero jump to end
        JMP start530                     ; else continue
end530:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end526                        ; if cell is zero jump to end
        JMP start526                     ; else continue
end526:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end524                        ; if cell is zero jump to end
        JMP start524                     ; else continue
end524:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end531                        ; if cell is zero, don't enter scope
start531:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end532                        ; if cell is zero, don't enter scope
start532:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end532                        ; if cell is zero jump to end
        JMP start532                     ; else continue
end532:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end531                        ; if cell is zero jump to end
        JMP start531                     ; else continue
end531:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end515                        ; if cell is zero jump to end
        JMP start515                     ; else continue
end515:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end533                        ; if cell is zero, don't enter scope
start533:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end533                        ; if cell is zero jump to end
        JMP start533                     ; else continue
end533:        
        
        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end534                        ; if cell is zero, don't enter scope
start534:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end534                        ; if cell is zero jump to end
        JMP start534                     ; else continue
end534:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end535                        ; if cell is zero, don't enter scope
start535:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end536                        ; if cell is zero, don't enter scope
start536:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end536                        ; if cell is zero jump to end
        JMP start536                     ; else continue
end536:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end535                        ; if cell is zero jump to end
        JMP start535                     ; else continue
end535:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end114                        ; if cell is zero jump to end
        JMP start114                     ; else continue
end114:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end537                        ; if cell is zero, don't enter scope
start537:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end537                        ; if cell is zero jump to end
        JMP start537                     ; else continue
end537:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end538                        ; if cell is zero, don't enter scope
start538:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1  ; move number of characters to output into eax register
        call output

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end538                        ; if cell is zero jump to end
        JMP start538                     ; else continue
end538:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end539                        ; if cell is zero, don't enter scope
start539:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1  ; move number of characters to output into eax register
        call output

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end539                        ; if cell is zero jump to end
        JMP start539                     ; else continue
end539:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end540                        ; if cell is zero, don't enter scope
start540:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end540                        ; if cell is zero jump to end
        JMP start540                     ; else continue
end540:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end541                        ; if cell is zero, don't enter scope
start541:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end541                        ; if cell is zero jump to end
        JMP start541                     ; else continue
end541:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end542                        ; if cell is zero, don't enter scope
start542:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end542                        ; if cell is zero jump to end
        JMP start542                     ; else continue
end542:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end543                        ; if cell is zero, don't enter scope
start543:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end543                        ; if cell is zero jump to end
        JMP start543                     ; else continue
end543:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end544                        ; if cell is zero, don't enter scope
start544:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end544                        ; if cell is zero jump to end
        JMP start544                     ; else continue
end544:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end545                        ; if cell is zero, don't enter scope
start545:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end545                        ; if cell is zero jump to end
        JMP start545                     ; else continue
end545:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end546                        ; if cell is zero, don't enter scope
start546:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end547                        ; if cell is zero, don't enter scope
start547:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end547                        ; if cell is zero jump to end
        JMP start547                     ; else continue
end547:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end548                        ; if cell is zero, don't enter scope
start548:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end548                        ; if cell is zero jump to end
        JMP start548                     ; else continue
end548:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end549                        ; if cell is zero, don't enter scope
start549:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end549                        ; if cell is zero jump to end
        JMP start549                     ; else continue
end549:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end550                        ; if cell is zero, don't enter scope
start550:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end550                        ; if cell is zero jump to end
        JMP start550                     ; else continue
end550:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end551                        ; if cell is zero, don't enter scope
start551:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end551                        ; if cell is zero jump to end
        JMP start551                     ; else continue
end551:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end552                        ; if cell is zero, don't enter scope
start552:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end552                        ; if cell is zero jump to end
        JMP start552                     ; else continue
end552:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end546                        ; if cell is zero jump to end
        JMP start546                     ; else continue
end546:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end553                        ; if cell is zero, don't enter scope
start553:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end553                        ; if cell is zero jump to end
        JMP start553                     ; else continue
end553:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end554                        ; if cell is zero, don't enter scope
start554:
                
            
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end555                        ; if cell is zero, don't enter scope
start555:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end555                        ; if cell is zero jump to end
        JMP start555                     ; else continue
end555:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end554                        ; if cell is zero jump to end
        JMP start554                     ; else continue
end554:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end556                        ; if cell is zero, don't enter scope
start556:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end556                        ; if cell is zero jump to end
        JMP start556                     ; else continue
end556:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 11                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end557                        ; if cell is zero, don't enter scope
start557:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end558                        ; if cell is zero, don't enter scope
start558:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end558                        ; if cell is zero jump to end
        JMP start558                     ; else continue
end558:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end557                        ; if cell is zero jump to end
        JMP start557                     ; else continue
end557:        
        
        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 14                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end559                        ; if cell is zero, don't enter scope
start559:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end559                        ; if cell is zero jump to end
        JMP start559                     ; else continue
end559:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end560                        ; if cell is zero, don't enter scope
start560:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end560                        ; if cell is zero jump to end
        JMP start560                     ; else continue
end560:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end561                        ; if cell is zero, don't enter scope
start561:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end562                        ; if cell is zero, don't enter scope
start562:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end562                        ; if cell is zero jump to end
        JMP start562                     ; else continue
end562:        
        
        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end563                        ; if cell is zero, don't enter scope
start563:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end563                        ; if cell is zero jump to end
        JMP start563                     ; else continue
end563:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end564                        ; if cell is zero, don't enter scope
start564:
                
            
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end565                        ; if cell is zero, don't enter scope
start565:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end565                        ; if cell is zero jump to end
        JMP start565                     ; else continue
end565:        
        
        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end566                        ; if cell is zero, don't enter scope
start566:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end567                        ; if cell is zero, don't enter scope
start567:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end567                        ; if cell is zero jump to end
        JMP start567                     ; else continue
end567:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end568                        ; if cell is zero, don't enter scope
start568:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end568                        ; if cell is zero jump to end
        JMP start568                     ; else continue
end568:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end566                        ; if cell is zero jump to end
        JMP start566                     ; else continue
end566:        
        
        sub ebx, 10                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end564                        ; if cell is zero jump to end
        JMP start564                     ; else continue
end564:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end561                        ; if cell is zero jump to end
        JMP start561                     ; else continue
end561:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end569                        ; if cell is zero, don't enter scope
start569:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end569                        ; if cell is zero jump to end
        JMP start569                     ; else continue
end569:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end570                        ; if cell is zero, don't enter scope
start570:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end571                        ; if cell is zero, don't enter scope
start571:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end572                        ; if cell is zero, don't enter scope
start572:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end572                        ; if cell is zero jump to end
        JMP start572                     ; else continue
end572:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end573                        ; if cell is zero, don't enter scope
start573:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end573                        ; if cell is zero jump to end
        JMP start573                     ; else continue
end573:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end571                        ; if cell is zero jump to end
        JMP start571                     ; else continue
end571:        
        
        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end574                        ; if cell is zero, don't enter scope
start574:
                
            
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end575                        ; if cell is zero, don't enter scope
start575:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end575                        ; if cell is zero jump to end
        JMP start575                     ; else continue
end575:        
        
        sub ebx, 14                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end574                        ; if cell is zero jump to end
        JMP start574                     ; else continue
end574:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end576                        ; if cell is zero, don't enter scope
start576:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end576                        ; if cell is zero jump to end
        JMP start576                     ; else continue
end576:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end577                        ; if cell is zero, don't enter scope
start577:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end578                        ; if cell is zero, don't enter scope
start578:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end578                        ; if cell is zero jump to end
        JMP start578                     ; else continue
end578:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end579                        ; if cell is zero, don't enter scope
start579:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end580                        ; if cell is zero, don't enter scope
start580:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end580                        ; if cell is zero jump to end
        JMP start580                     ; else continue
end580:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end581                        ; if cell is zero, don't enter scope
start581:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end581                        ; if cell is zero jump to end
        JMP start581                     ; else continue
end581:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end579                        ; if cell is zero jump to end
        JMP start579                     ; else continue
end579:        
        
        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end582                        ; if cell is zero, don't enter scope
start582:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end582                        ; if cell is zero jump to end
        JMP start582                     ; else continue
end582:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end577                        ; if cell is zero jump to end
        JMP start577                     ; else continue
end577:        
        
        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 4                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end583                        ; if cell is zero, don't enter scope
start583:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end583                        ; if cell is zero jump to end
        JMP start583                     ; else continue
end583:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end570                        ; if cell is zero jump to end
        JMP start570                     ; else continue
end570:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end584                        ; if cell is zero, don't enter scope
start584:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end584                        ; if cell is zero jump to end
        JMP start584                     ; else continue
end584:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end585                        ; if cell is zero, don't enter scope
start585:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end586                        ; if cell is zero, don't enter scope
start586:
                
            
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end587                        ; if cell is zero, don't enter scope
start587:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end587                        ; if cell is zero jump to end
        JMP start587                     ; else continue
end587:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end586                        ; if cell is zero jump to end
        JMP start586                     ; else continue
end586:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end588                        ; if cell is zero, don't enter scope
start588:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end589                        ; if cell is zero, don't enter scope
start589:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end589                        ; if cell is zero jump to end
        JMP start589                     ; else continue
end589:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end590                        ; if cell is zero, don't enter scope
start590:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end591                        ; if cell is zero, don't enter scope
start591:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end591                        ; if cell is zero jump to end
        JMP start591                     ; else continue
end591:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end592                        ; if cell is zero, don't enter scope
start592:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end592                        ; if cell is zero jump to end
        JMP start592                     ; else continue
end592:        
        
        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end590                        ; if cell is zero jump to end
        JMP start590                     ; else continue
end590:        
        
        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end593                        ; if cell is zero, don't enter scope
start593:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end593                        ; if cell is zero jump to end
        JMP start593                     ; else continue
end593:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end588                        ; if cell is zero jump to end
        JMP start588                     ; else continue
end588:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 5                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end594                        ; if cell is zero, don't enter scope
start594:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end595                        ; if cell is zero, don't enter scope
start595:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end595                        ; if cell is zero jump to end
        JMP start595                     ; else continue
end595:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end594                        ; if cell is zero jump to end
        JMP start594                     ; else continue
end594:        
        
        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end596                        ; if cell is zero, don't enter scope
start596:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end596                        ; if cell is zero jump to end
        JMP start596                     ; else continue
end596:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end597                        ; if cell is zero, don't enter scope
start597:
                
            
        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end598                        ; if cell is zero, don't enter scope
start598:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end598                        ; if cell is zero jump to end
        JMP start598                     ; else continue
end598:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end599                        ; if cell is zero, don't enter scope
start599:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end600                        ; if cell is zero, don't enter scope
start600:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end600                        ; if cell is zero jump to end
        JMP start600                     ; else continue
end600:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end601                        ; if cell is zero, don't enter scope
start601:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 16                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end602                        ; if cell is zero, don't enter scope
start602:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end602                        ; if cell is zero jump to end
        JMP start602                     ; else continue
end602:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end603                        ; if cell is zero, don't enter scope
start603:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end603                        ; if cell is zero jump to end
        JMP start603                     ; else continue
end603:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end604                        ; if cell is zero, don't enter scope
start604:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end604                        ; if cell is zero jump to end
        JMP start604                     ; else continue
end604:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end601                        ; if cell is zero jump to end
        JMP start601                     ; else continue
end601:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end599                        ; if cell is zero jump to end
        JMP start599                     ; else continue
end599:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end605                        ; if cell is zero, don't enter scope
start605:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end605                        ; if cell is zero jump to end
        JMP start605                     ; else continue
end605:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end606                        ; if cell is zero, don't enter scope
start606:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end607                        ; if cell is zero, don't enter scope
start607:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end607                        ; if cell is zero jump to end
        JMP start607                     ; else continue
end607:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end608                        ; if cell is zero, don't enter scope
start608:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 14                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end609                        ; if cell is zero, don't enter scope
start609:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end609                        ; if cell is zero jump to end
        JMP start609                     ; else continue
end609:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end610                        ; if cell is zero, don't enter scope
start610:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end610                        ; if cell is zero jump to end
        JMP start610                     ; else continue
end610:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end611                        ; if cell is zero, don't enter scope
start611:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end611                        ; if cell is zero jump to end
        JMP start611                     ; else continue
end611:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end612                        ; if cell is zero, don't enter scope
start612:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end612                        ; if cell is zero jump to end
        JMP start612                     ; else continue
end612:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end608                        ; if cell is zero jump to end
        JMP start608                     ; else continue
end608:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end606                        ; if cell is zero jump to end
        JMP start606                     ; else continue
end606:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end613                        ; if cell is zero, don't enter scope
start613:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end614                        ; if cell is zero, don't enter scope
start614:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end614                        ; if cell is zero jump to end
        JMP start614                     ; else continue
end614:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end613                        ; if cell is zero jump to end
        JMP start613                     ; else continue
end613:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end597                        ; if cell is zero jump to end
        JMP start597                     ; else continue
end597:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end615                        ; if cell is zero, don't enter scope
start615:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end615                        ; if cell is zero jump to end
        JMP start615                     ; else continue
end615:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end616                        ; if cell is zero, don't enter scope
start616:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end616                        ; if cell is zero jump to end
        JMP start616                     ; else continue
end616:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 5                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end617                        ; if cell is zero, don't enter scope
start617:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end618                        ; if cell is zero, don't enter scope
start618:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end618                        ; if cell is zero jump to end
        JMP start618                     ; else continue
end618:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end617                        ; if cell is zero jump to end
        JMP start617                     ; else continue
end617:        
        
        add ebx, 4                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end619                        ; if cell is zero, don't enter scope
start619:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end619                        ; if cell is zero jump to end
        JMP start619                     ; else continue
end619:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end585                        ; if cell is zero jump to end
        JMP start585                     ; else continue
end585:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end22                        ; if cell is zero jump to end
        JMP start22                     ; else continue
end22:        
        
        sub ebx, 4                      ; move cell-pointer (decrement)

        mov eax, 1  ; move number of characters to output into eax register
        call output

        add ebx, 10                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end620                        ; if cell is zero, don't enter scope
start620:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end621                        ; if cell is zero, don't enter scope
start621:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end621                        ; if cell is zero jump to end
        JMP start621                     ; else continue
end621:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end620                        ; if cell is zero jump to end
        JMP start620                     ; else continue
end620:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end622                        ; if cell is zero, don't enter scope
start622:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end622                        ; if cell is zero jump to end
        JMP start622                     ; else continue
end622:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 10                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end623                        ; if cell is zero, don't enter scope
start623:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end624                        ; if cell is zero, don't enter scope
start624:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end624                        ; if cell is zero jump to end
        JMP start624                     ; else continue
end624:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end623                        ; if cell is zero jump to end
        JMP start623                     ; else continue
end623:        
        
        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 15                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end625                        ; if cell is zero, don't enter scope
start625:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end625                        ; if cell is zero jump to end
        JMP start625                     ; else continue
end625:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end626                        ; if cell is zero, don't enter scope
start626:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end626                        ; if cell is zero jump to end
        JMP start626                     ; else continue
end626:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end627                        ; if cell is zero, don't enter scope
start627:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end628                        ; if cell is zero, don't enter scope
start628:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end628                        ; if cell is zero jump to end
        JMP start628                     ; else continue
end628:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end629                        ; if cell is zero, don't enter scope
start629:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end629                        ; if cell is zero jump to end
        JMP start629                     ; else continue
end629:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end630                        ; if cell is zero, don't enter scope
start630:
                
            
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end631                        ; if cell is zero, don't enter scope
start631:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 7                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 7                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end631                        ; if cell is zero jump to end
        JMP start631                     ; else continue
end631:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end632                        ; if cell is zero, don't enter scope
start632:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end633                        ; if cell is zero, don't enter scope
start633:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end633                        ; if cell is zero jump to end
        JMP start633                     ; else continue
end633:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end634                        ; if cell is zero, don't enter scope
start634:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end634                        ; if cell is zero jump to end
        JMP start634                     ; else continue
end634:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end632                        ; if cell is zero jump to end
        JMP start632                     ; else continue
end632:        
        
        sub ebx, 10                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end630                        ; if cell is zero jump to end
        JMP start630                     ; else continue
end630:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end627                        ; if cell is zero jump to end
        JMP start627                     ; else continue
end627:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end635                        ; if cell is zero, don't enter scope
start635:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end635                        ; if cell is zero jump to end
        JMP start635                     ; else continue
end635:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end636                        ; if cell is zero, don't enter scope
start636:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end637                        ; if cell is zero, don't enter scope
start637:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end638                        ; if cell is zero, don't enter scope
start638:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end638                        ; if cell is zero jump to end
        JMP start638                     ; else continue
end638:        
        
        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end639                        ; if cell is zero, don't enter scope
start639:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end639                        ; if cell is zero jump to end
        JMP start639                     ; else continue
end639:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end637                        ; if cell is zero jump to end
        JMP start637                     ; else continue
end637:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end640                        ; if cell is zero, don't enter scope
start640:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end641                        ; if cell is zero, don't enter scope
start641:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end641                        ; if cell is zero jump to end
        JMP start641                     ; else continue
end641:        
        
        sub ebx, 15                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end640                        ; if cell is zero jump to end
        JMP start640                     ; else continue
end640:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end642                        ; if cell is zero, don't enter scope
start642:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end642                        ; if cell is zero jump to end
        JMP start642                     ; else continue
end642:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end643                        ; if cell is zero, don't enter scope
start643:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end644                        ; if cell is zero, don't enter scope
start644:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end644                        ; if cell is zero jump to end
        JMP start644                     ; else continue
end644:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end645                        ; if cell is zero, don't enter scope
start645:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end646                        ; if cell is zero, don't enter scope
start646:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end646                        ; if cell is zero jump to end
        JMP start646                     ; else continue
end646:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end647                        ; if cell is zero, don't enter scope
start647:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end647                        ; if cell is zero jump to end
        JMP start647                     ; else continue
end647:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end645                        ; if cell is zero jump to end
        JMP start645                     ; else continue
end645:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end648                        ; if cell is zero, don't enter scope
start648:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 7                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end648                        ; if cell is zero jump to end
        JMP start648                     ; else continue
end648:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end643                        ; if cell is zero jump to end
        JMP start643                     ; else continue
end643:        
        
        add ebx, 8                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 5                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end649                        ; if cell is zero, don't enter scope
start649:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end649                        ; if cell is zero jump to end
        JMP start649                     ; else continue
end649:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 3                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end636                        ; if cell is zero jump to end
        JMP start636                     ; else continue
end636:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end650                        ; if cell is zero, don't enter scope
start650:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end650                        ; if cell is zero jump to end
        JMP start650                     ; else continue
end650:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end651                        ; if cell is zero, don't enter scope
start651:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end652                        ; if cell is zero, don't enter scope
start652:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end653                        ; if cell is zero, don't enter scope
start653:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end653                        ; if cell is zero jump to end
        JMP start653                     ; else continue
end653:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end652                        ; if cell is zero jump to end
        JMP start652                     ; else continue
end652:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end654                        ; if cell is zero, don't enter scope
start654:
                
            
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end655                        ; if cell is zero, don't enter scope
start655:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end655                        ; if cell is zero jump to end
        JMP start655                     ; else continue
end655:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end656                        ; if cell is zero, don't enter scope
start656:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end657                        ; if cell is zero, don't enter scope
start657:
                
            
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end657                        ; if cell is zero jump to end
        JMP start657                     ; else continue
end657:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end658                        ; if cell is zero, don't enter scope
start658:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end658                        ; if cell is zero jump to end
        JMP start658                     ; else continue
end658:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end656                        ; if cell is zero jump to end
        JMP start656                     ; else continue
end656:        
        
        sub ebx, 7                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end659                        ; if cell is zero, don't enter scope
start659:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 7                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 7                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end659                        ; if cell is zero jump to end
        JMP start659                     ; else continue
end659:        
        
        sub ebx, 1                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end654                        ; if cell is zero jump to end
        JMP start654                     ; else continue
end654:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 5                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end660                        ; if cell is zero, don't enter scope
start660:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end661                        ; if cell is zero, don't enter scope
start661:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end661                        ; if cell is zero jump to end
        JMP start661                     ; else continue
end661:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end660                        ; if cell is zero jump to end
        JMP start660                     ; else continue
end660:        
        
        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 27                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end662                        ; if cell is zero, don't enter scope
start662:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end662                        ; if cell is zero jump to end
        JMP start662                     ; else continue
end662:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end663                        ; if cell is zero, don't enter scope
start663:
                
            
        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end664                        ; if cell is zero, don't enter scope
start664:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end664                        ; if cell is zero jump to end
        JMP start664                     ; else continue
end664:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end665                        ; if cell is zero, don't enter scope
start665:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 2                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end666                        ; if cell is zero, don't enter scope
start666:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end666                        ; if cell is zero jump to end
        JMP start666                     ; else continue
end666:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end667                        ; if cell is zero, don't enter scope
start667:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 17                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end668                        ; if cell is zero, don't enter scope
start668:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end668                        ; if cell is zero jump to end
        JMP start668                     ; else continue
end668:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end669                        ; if cell is zero, don't enter scope
start669:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end669                        ; if cell is zero jump to end
        JMP start669                     ; else continue
end669:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 5                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end670                        ; if cell is zero, don't enter scope
start670:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end670                        ; if cell is zero jump to end
        JMP start670                     ; else continue
end670:        
        
        add ebx, 1                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end667                        ; if cell is zero jump to end
        JMP start667                     ; else continue
end667:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end665                        ; if cell is zero jump to end
        JMP start665                     ; else continue
end665:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end671                        ; if cell is zero, don't enter scope
start671:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 8                      ; move cell-pointer (decrement)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end671                        ; if cell is zero jump to end
        JMP start671                     ; else continue
end671:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 8                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end672                        ; if cell is zero, don't enter scope
start672:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 8                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 2                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end673                        ; if cell is zero, don't enter scope
start673:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end673                        ; if cell is zero jump to end
        JMP start673                     ; else continue
end673:        
        
        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end674                        ; if cell is zero, don't enter scope
start674:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 6                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 15                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end675                        ; if cell is zero, don't enter scope
start675:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end675                        ; if cell is zero jump to end
        JMP start675                     ; else continue
end675:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end676                        ; if cell is zero, don't enter scope
start676:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end676                        ; if cell is zero jump to end
        JMP start676                     ; else continue
end676:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 6                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end677                        ; if cell is zero, don't enter scope
start677:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end677                        ; if cell is zero jump to end
        JMP start677                     ; else continue
end677:        
        
        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end678                        ; if cell is zero, don't enter scope
start678:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end678                        ; if cell is zero jump to end
        JMP start678                     ; else continue
end678:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end674                        ; if cell is zero jump to end
        JMP start674                     ; else continue
end674:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end672                        ; if cell is zero jump to end
        JMP start672                     ; else continue
end672:        
        
        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        add ebx, 1                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end679                        ; if cell is zero, don't enter scope
start679:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 1                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end680                        ; if cell is zero, don't enter scope
start680:
                
            
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end680                        ; if cell is zero jump to end
        JMP start680                     ; else continue
end680:        
        
        sub ebx, 8                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end679                        ; if cell is zero jump to end
        JMP start679                     ; else continue
end679:        
        
        add ebx, 8                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end663                        ; if cell is zero jump to end
        JMP start663                     ; else continue
end663:        
        
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end681                        ; if cell is zero, don't enter scope
start681:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end681                        ; if cell is zero jump to end
        JMP start681                     ; else continue
end681:        
        
        add ebx, 4                      ; move cell-pointer (increment)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end682                        ; if cell is zero, don't enter scope
start682:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end682                        ; if cell is zero jump to end
        JMP start682                     ; else continue
end682:        
        
        sub ebx, 3                      ; move cell-pointer (decrement)

        mov eax, 5                     ; add n to current cell
        call add                       ; add value to cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end683                        ; if cell is zero, don't enter scope
start683:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end684                        ; if cell is zero, don't enter scope
start684:
                
            
        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 9                      ; move cell-pointer (increment)

        mov eax, 1                     ; add n to current cell
        call add                       ; add value to cell

        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end684                        ; if cell is zero jump to end
        JMP start684                     ; else continue
end684:        
        
        add ebx, 9                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end683                        ; if cell is zero jump to end
        JMP start683                     ; else continue
end683:        
        
        add ebx, 5                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        add ebx, 27                      ; move cell-pointer (increment)

        mov eax, 1                     ; sub n from current cell
        call sub                       ; sub value from cell

        sub ebx, 6                      ; move cell-pointer (decrement)

; scope
        mov edx, MEM                   ; get base address of cells
        add edx, ebx                     ; add offset (cell counter)
        cmp [edx], byte 0x0            ; compare with zero
        JE end685                        ; if cell is zero, don't enter scope
start685:
                
            
        sub ebx, 9                      ; move cell-pointer (decrement)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end685                        ; if cell is zero jump to end
        JMP start685                     ; else continue
end685:        
        
; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end651                        ; if cell is zero jump to end
        JMP start651                     ; else continue
end651:        
        
        add ebx, 3                      ; move cell-pointer (increment)

; scope end
        mov edx, MEM                   ; get base address of cells
        add edx, ebx
        cmp [edx], byte 00
        JE end12                        ; if cell is zero jump to end
        JMP start12                     ; else continue
end12:        
            
; Exit
        mov eax, 1
        mov ebx, 0
        int 0x80

add:
        mov edx, MEM                   ; get base adress of cells
        add edx, ebx                     ; add offset (cell counter)
        add [edx], al                 ; add value stored in eax to cell
        ret

sub:
        mov edx, MEM                   ; get base adress of cells
        add edx, ebx                     ; add offset (cell counter)
        sub [edx], al                 ; sub value stored in eax from cell
        ret

output:
; push to stack

        push ecx
        push edx
        push eax
        push ebx

; procedure

        mov ecx, MEM                   ; get base address of cells
        add ecx, ebx                     ; add offset (cell counter)
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
        add ecx, ebx                     ; add offset (cell counter)
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
