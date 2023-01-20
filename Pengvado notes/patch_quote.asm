; the original exe determines the speaker of a dialogue line by grepping for
; a built-in list of character names, which is fragile and inconvenient to
; translate. I replace it with just a grep for a begin-quote mark.
%include "patch.h"
global_offset 0x41b910
    cmp byte [ebx], '%'
    je .end
    cmp byte [ebx], 0
    je .end
    mov eax, ebx
.loop:
    inc eax
    cmp word [eax], 0x7581
    je 0x41b9e0-offset
    cmp byte [eax], 0
    jne .loop
.end:
end_offset 0x41b97e
