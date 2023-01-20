; this function copies one line from the current dialogue to the history buffer.
; my change is to repack the text from 2byte to shift_jis.
; kludge: check whether the source is already packed. ideally the charset would
; be consistent, but I don't want to track down where a conversion should or
; shouldn't go.
%include "patch.h"
global_offset 0x41e130
    ; esi = source buffer
    ; edi = history buffer
    mov ecx, [esp+0x14] ; number of chars to copy
    push edi
.cp_char:
    movzx eax, word [esi]
    mov [edi], ax
    ; dest is shift_jis, increment pointer by the char size
    sub al, 0x20
    cmp al, 0x5f
    setae bl
    sbb edi, -2
    ; source is either shift_jis or ascii interleaved with spaces. skip the spaces if so.
    cmp ah, 0x20
    sete bh
    or bl, bh
    movzx ebx, bl
    inc esi
    add esi, ebx
    dec ecx
    jg .cp_char
    mov word [edi], 0

    ; size-optimized version of the original function
    pop edi
    mov cl, [esp+0x18]
    mov [edi-6], cl
    mov cx, [esp+0x1c]
    mov [edi-4], cx
    mov cx, [esp+0x20]
    mov [edi-2], cx
    mov ecx, [esp+0x24]
    mov [edi-10], ecx
    xor edx, edx
    add edi, 0x72
    mov word [edi-2], 0
end_offset 0x41e204
