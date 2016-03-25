test_device():
        sub     rsp, 24
        call    rand
        mov     edx, DWORD PTR [rsp]
        mov     eax, edx
        and     edx, -258049
        shr     eax, 12
        add     eax, 1
        and     eax, 63
        mov     ecx, eax
        sal     ecx, 12
        or      edx, ecx
        mov     DWORD PTR [rsp], edx
        mov     DWORD PTR [rsp+12], eax
        add     rsp, 24
        ret

