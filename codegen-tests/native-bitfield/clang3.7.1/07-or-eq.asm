test_device():                       # @test_device()
        push    rax
        call    rand
        shl     eax, 12
        or      eax, dword ptr [rsp + 4]
        and     eax, 258048
        mov     ecx, -258049
        and     ecx, dword ptr [rsp + 4]
        or      ecx, eax
        mov     dword ptr [rsp + 4], ecx
        pop     rax
        ret



