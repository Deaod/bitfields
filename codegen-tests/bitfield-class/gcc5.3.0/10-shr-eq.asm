test_device():
        sub     rsp, 24
        call    rand
        mov     edx, DWORD PTR [rsp]
        mov     edx, DWORD PTR [rsp]
        mov     ecx, eax
        mov     esi, edx
        and     edx, -258049
        and     esi, 258048
        shr     esi, cl
        and     esi, 258048
        or      edx, esi
        mov     DWORD PTR [rsp], edx
        add     rsp, 24
        ret

