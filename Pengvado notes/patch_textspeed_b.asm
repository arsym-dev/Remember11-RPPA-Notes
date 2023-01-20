; increase the text speed by a factor of 2.5, to match english's higher number of letters per word
; table is in milliseconds per letter, for the 4 values of text speed option
; original was 128, 64, 32, 0
%include "patch.h"
global_offset 0x4b171c
    dd 50, 25, 13, 0
