test_device():
        sub     rsp, 24
        call    rand
        mov     rdx, QWORD PTR [rsp]
        mov     ecx, eax
        shr     rdx, 12
        and     edx, 63
        sar     edx, cl
        and     edx, 63
        mov     eax, edx
        mov     edx, DWORD PTR [rsp]
        sal     eax, 12
        and     edx, -258049
        or      edx, eax
        mov     DWORD PTR [rsp], edx
        add     rsp, 24
        ret

