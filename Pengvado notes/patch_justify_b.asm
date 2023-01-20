; forbid spaces at the beginning of a line
%include "patch.h"
global_offset 0x41bfb8
    ; this part is just a size-optimization of the original
    mov ecx, 0x49cbc0-2
    mov eax, [esp+0x10]
    movzx edx, word [eax]
.loop:
    add ecx, 2
    cmp word [ecx], dx
    je 0x41c115-offset
    cmp byte [ecx], 0
    jne .loop
    ; and here's my addition
    cmp byte [eax], ' '
    je 0x41c2d8-offset
    sub eax, 2
end_offset 0x41bff7
