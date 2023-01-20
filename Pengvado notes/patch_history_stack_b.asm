%include "patch.h"
global_offset 0x41eb7d
    add esp, 8
    pop esi
    pop ebx
    add esp, 0x80
    mov ecx, [esp+0x70]
    xor ecx, esp
    call 0x480cd2-offset
    add esp, 0x74
    ret
