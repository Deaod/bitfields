test_device():
        sub     rsp, 24
        call    rand
        mov     rdx, QWORD PTR [rsp]
        shr     rdx, 12
        mov     ecx, edx
        sub     ecx, eax
        mov     eax, ecx
        and     eax, 63
        sal     eax, 12
        mov     edx, eax
        mov     eax, DWORD PTR [rsp]
        and     eax, -258049
        or      eax, edx
        mov     DWORD PTR [rsp], eax
        add     rsp, 24
        ret

