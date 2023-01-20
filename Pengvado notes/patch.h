bits 32
section .text

%macro global_offset 1
    %xdefine offset %1
    patch%1:
%endmacro

%macro end_offset 1
    times %1-offset+$$-$ nop
%endmacro
