section .mb_header
header_start:
    ; magic number
    dd 0xe85250d6 ; multiboot 2 number

    ; architecture
    dd 0 ; protected mode

    ; header length
    dd header_end - header_start

    ; checksum
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start)) 

    ; end tag
    dw 0
    dw 0
    dd 8
header_end: