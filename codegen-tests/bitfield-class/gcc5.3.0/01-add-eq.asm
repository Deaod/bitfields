test_device():
        sub     rsp, 24
        call    rand
        mov     edx, DWORD PTR [rsp]
        mov     edx, DWORD PTR [rsp]
        sal     eax, 12
        add     eax, edx
        and     edx, -258049
        and     eax, 258048
        or      eax, edx
        mov     DWORD PTR [rsp], eax
        add     rsp, 24
        ret

