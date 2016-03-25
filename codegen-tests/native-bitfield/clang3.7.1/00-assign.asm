test_device():                       # @test_device()
        push    rax
        call    rand
        and     eax, 63
        shl     eax, 12
        mov     ecx, -258049
        and     ecx, dword ptr [rsp + 4]
        or      ecx, eax
        mov     dword ptr [rsp + 4], ecx
        pop     rax
        ret



