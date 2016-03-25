test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, eax
        mov     eax, dword ptr [rsp + 4]
        shr     eax, 12
        and     eax, 63
        xor     edx, edx
        div     ecx
        shl     eax, 12
        mov     ecx, -258049
        and     ecx, dword ptr [rsp + 4]
        or      ecx, eax
        mov     dword ptr [rsp + 4], ecx
        pop     rax
        ret



