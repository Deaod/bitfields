test_device():
        sub     rsp, 24
        call    rand
        mov     edx, DWORD PTR [rsp]
        mov     edx, DWORD PTR [rsp]
        sal     eax, 12
        or      eax, -258049
        and     eax, edx
        mov     DWORD PTR [rsp], eax
        add     rsp, 24
        ret

