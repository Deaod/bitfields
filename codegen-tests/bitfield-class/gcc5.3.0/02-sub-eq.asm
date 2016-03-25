test_device():
        sub     rsp, 24
        call    rand
        mov     edx, DWORD PTR [rsp]
        mov     edx, DWORD PTR [rsp]
        sal     eax, 12
        mov     ecx, edx
        and     edx, -258049
        sub     ecx, eax
        mov     eax, ecx
        and     eax, 258048
        or      edx, eax
        mov     DWORD PTR [rsp], edx
        add     rsp, 24
        ret

