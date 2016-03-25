test_device():
        sub     rsp, 24
        call    rand
        mov     esi, eax
        mov     eax, DWORD PTR [rsp]
        mov     ecx, DWORD PTR [rsp]
        xor     edx, edx
        mov     eax, ecx
        and     ecx, -258049
        shr     eax, 12
        and     eax, 63
        div     esi
        mov     eax, edx
        sal     eax, 12
        or      ecx, eax
        mov     DWORD PTR [rsp], ecx
        add     rsp, 24
        ret

