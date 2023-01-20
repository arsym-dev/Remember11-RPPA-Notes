; fix rendering of spaces
%include "patch.h"
global_offset 0x441c98
    movzx eax, word [eax]
    mov ecx, eax
    sub cl, 0x20
    jne .skip
    mov ax, 0x4081 ; convert ascii space to CJK space
    mov cl, 0x61
.skip:
    xchg al, ah
    mov [esp+8], eax
    cmp cl, 0x5e
end_offset 0x441cb7
