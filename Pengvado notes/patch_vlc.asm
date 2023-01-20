; parse a shift_jis character, and decide whether it's 1 or 2 bytes.
; % is special-cased since it's used for escape (like \ normally is)
%include "patch.h"
global_offset 0x49cb88
    or ecx, edi ; this is here just because I had to displace it to fit a call in the original location
inc_ptr:
    movzx eax, byte [esi]
    cmp eax, '%'
    je .skip
    sub al, 0x20
    cmp al, 0x5e
    ja .skip
    dec esi
.skip:
    add esi, 2
    ret

align 16
inc_ptr2:
    xchg esi, ebp
    call inc_ptr
    xchg esi, ebp
    jmp 0x43bca0-offset
