test_device():
        sub     rsp, 24
        call    rand
        mov     esi, eax
        mov     eax, DWORD PTR [rsp]
        mov     ecx, DWORD PTR [rsp]
        xor     edx, edx
        mov     eax, ecx
        and     ecx, -258049
        and     eax, 258048
        div     esi
        and     eax, 258048
        or      ecx, eax
        mov     DWORD PTR [rsp], ecx
        add     rsp, 24
        ret

