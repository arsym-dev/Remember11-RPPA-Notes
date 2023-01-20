; forbid spaces at the beginning of a line
%include "patch.h"
global_offset 0x41c123
.char:
    ; this part is just a size-optimization of the original
    movzx edx, word [eax]
    mov ebp, 0x49cbc0-2
.loop:
    add ebp, 2
    cmp byte [ebp], 0
    je .space
    cmp word [ebp], dx
    jne .loop
.found:
    sub eax, 2
    inc ecx
    cmp ecx, [edi+8]
    jl .char
.space:
    ; and here's my addition
    cmp byte [eax], ' '
    jne .end
    add eax, 2
    dec ecx
    jmp .space
.end:
    mov [esp+0x24], eax
end_offset 0x41c161
