; update the exe header to include my patches in .text
; not needed for plain execution, but upx discards any trailing data
%include "patch.h"
global_offset 0x400200
dd 0x9c000
