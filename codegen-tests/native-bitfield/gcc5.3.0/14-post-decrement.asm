test_device():
        sub     rsp, 24
        call    rand
        mov     rax, QWORD PTR [rsp]
        shr     rax, 12
        and     eax, 63
        lea     edx, [rax+63]
        movzx   eax, al
        and     edx, 63
        mov     ecx, edx
        mov     edx, DWORD PTR [rsp]
        sal     ecx, 12
        and     edx, -258049
        or      edx, ecx
        mov     DWORD PTR [rsp], edx
        mov     DWORD PTR [rsp+12], eax
        add     rsp, 24
        ret

