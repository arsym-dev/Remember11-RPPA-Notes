; causes dialogue lines to use the text speed given by the global option,
; rather than the values from the scripts which were presumably tuned to make
; the original japanese text match the duration of the spoken line.
%include "patch.h"
global_offset 0x41c490
    nop
    nop
