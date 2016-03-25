test_device():                       # @test_device()
        push    rax
        call    rand
        shl     eax, 12
        or      eax, -258049
        and     dword ptr [rsp + 4], eax
        pop     rax
        ret

