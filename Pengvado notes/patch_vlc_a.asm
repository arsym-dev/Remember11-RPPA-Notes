; call my corrected shift_jis increment from the function that renders text in menus
%include "patch.h"
global_offset 0x43c2eb
    call 0x49cb88-offset
