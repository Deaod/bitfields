test_device():                       # @test_device()
        push    rax
        call    rand
        mov     eax, dword ptr [rsp + 4]
        shr     eax, 12
        mov     ecx, eax
        and     ecx, 63
        shl     eax, 12
        add     eax, 4096
        and     eax, 258048
        mov     edx, -258049
        and     edx, dword ptr [rsp + 4]
        or      edx, eax
        mov     dword ptr [rsp + 4], edx
        mov     dword ptr [rsp], ecx
        pop     rax
        ret



