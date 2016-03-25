test_device():
        sub     rsp, 24
        call    rand
        mov     eax, DWORD PTR [rsp]
        lea     edx, [rax-4096]
        mov     ecx, eax
        shr     eax, 12
        and     ecx, -258049
        and     eax, 63
        and     edx, 258048
        or      edx, ecx
        mov     DWORD PTR [rsp], edx
        mov     DWORD PTR [rsp+12], eax
        add     rsp, 24
        ret

