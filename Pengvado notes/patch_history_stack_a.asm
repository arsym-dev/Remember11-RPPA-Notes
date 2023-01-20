; allocate stack space to print one line of history.
; increased from 54 to 118 chars.
%include "patch.h"
global_offset 0x41e988
    pop esi
    pop ecx
    add esp, -0x80
    push ecx
    push esi
    push ebp
    push edi
    lea ecx, [esp+0x10]
    lea esi, [ebx+0x76]
    mov word [ecx+esi*2], bx
.memset:
    dec esi
    mov word [ecx+esi*2], 0x4081
    jg .memset
end_offset 0x41e9a6
