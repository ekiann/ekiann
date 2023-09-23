global res
global divd1
global divd2
global divd
global divr
global va
global vb
global vc

section .bss
    res resb 2
    divd resb 4
    divr resb 2
    va resb 2
    vb resb 2
    vc resb 2 
section .text
global CMAIN
global SIGN

SIGN:
    mov eax, 0
    mov ebx, 0
    mov ecx, 0
    xor edx, edx
    mov al, [vc]
    mov bl, 2
    imul bl
    add ax, 53
    sub ax, 1
    mov [divd], ax
    mov al, [vb]
    cbw
    mov cx, [va]
    sub ax, cx
    add ax, 4
    mov [divr], ax
    mov ax, [divd]
    cwd
    mov bx, [divr]
    idiv bx
    mov [res], al
    ret
    
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx
    mov ax, [vc]
    mov bx, 2
    mul bx
    add ax, 53
    adc dx, 0
    sub ax, 1
    mov cx, ax
    mov eax, edx
    shl eax, 16
    add eax, ecx
    mov [divd], eax
    mov ax, [vb]
    sub ax, [va]
    add ax, 4
    mov [divr], ax
    mov eax, [divd]
    mov ebx, [divr]
    div ebx
    mov [res], eax
    ret