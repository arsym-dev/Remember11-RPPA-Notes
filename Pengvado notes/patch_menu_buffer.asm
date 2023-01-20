; increase the buffer for menus from 64 bytes / 32 chars to 64/64.
; if we need to increase the byte limit, it's at 0x41d20a.
%include "patch.h"
global_offset 0x41d2cc
    shl ecx, 6
