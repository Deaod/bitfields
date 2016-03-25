test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, -258049
        and     ecx, dword ptr [rsp + 4]
        and     eax, 63
        shl     eax, 12
        or      eax, ecx
        mov     dword ptr [rsp + 4], eax
        pop     rax
        ret

