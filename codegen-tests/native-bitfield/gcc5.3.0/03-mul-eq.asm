test_device():
        sub     rsp, 24
        call    rand
        mov     rcx, QWORD PTR [rsp]
        shr     rcx, 12
        imul    eax, ecx
        and     eax, 63
        sal     eax, 12
        mov     edx, eax
        mov     eax, DWORD PTR [rsp]
        and     eax, -258049
        or      eax, edx
        mov     DWORD PTR [rsp], eax
        add     rsp, 24
        ret

