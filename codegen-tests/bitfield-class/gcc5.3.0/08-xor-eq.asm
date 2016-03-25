test_device():
        sub     rsp, 24
        call    rand
        mov     edx, DWORD PTR [rsp]
        mov     edx, DWORD PTR [rsp]
        and     eax, 63
        sal     eax, 12
        xor     eax, edx
        mov     DWORD PTR [rsp], eax
        add     rsp, 24
        ret

