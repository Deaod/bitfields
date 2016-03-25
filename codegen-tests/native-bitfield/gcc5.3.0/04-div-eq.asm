test_device():
        sub     rsp, 24
        call    rand
        mov     ecx, eax
        mov     rax, QWORD PTR [rsp]
        xor     edx, edx
        shr     rax, 12
        and     eax, 63
        div     ecx
        mov     edx, DWORD PTR [rsp]
        and     edx, -258049
        and     eax, 63
        sal     eax, 12
        or      eax, edx
        mov     DWORD PTR [rsp], eax
        add     rsp, 24
        ret

