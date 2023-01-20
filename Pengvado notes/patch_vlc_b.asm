; call my corrected shift_jis increment from the function that determines where on the screen to put the rendered chars.
%include "patch.h"
global_offset 0x43bd4e
    jmp 0x49cba8-offset
    times 3 nop
