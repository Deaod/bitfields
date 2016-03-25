test_device():
        sub     rsp, 24
        call    rand
        mov     edx, DWORD PTR [rsp]
        mov     edx, DWORD PTR [rsp]
        mov     ecx, edx
        and     edx, -258049
        and     ecx, 258048
        imul    eax, ecx
        and     eax, 258048
        or      edx, eax
        mov     DWORD PTR [rsp], edx
        add     rsp, 24
        ret

