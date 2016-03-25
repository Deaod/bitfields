test_device():
        sub     rsp, 24
        call    rand
        mov     rax, QWORD PTR [rsp]
        mov     edx, DWORD PTR [rsp]
        shr     rax, 12
        and     edx, -258049
        add     eax, 63
        and     eax, 63
        mov     ecx, eax
        sal     ecx, 12
        or      edx, ecx
        mov     DWORD PTR [rsp], edx
        mov     DWORD PTR [rsp+12], eax
        add     rsp, 24
        ret

