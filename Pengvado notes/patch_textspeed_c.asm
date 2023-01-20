; change default text speed from "medium" to "no wait"
%include "patch.h"
global_offset 0x4012f9
    mov word [0x2b5cf0c], 0x103
end_offset 0x401305
