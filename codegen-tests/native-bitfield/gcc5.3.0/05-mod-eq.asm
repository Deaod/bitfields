test_device():
        sub     rsp, 24
        call    rand
        mov     ecx, eax
        mov     rax, QWORD PTR [rsp]
        xor     edx, edx
        shr     rax, 12
        and     eax, 63
        div     ecx
        mov     eax, edx
        mov     edx, DWORD PTR [rsp]
        sal     eax, 12
        and     edx, -258049
        or      eax, edx
        mov     DWORD PTR [rsp], eax
        add     rsp, 24
        ret

