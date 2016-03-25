test_device():                       # @test_device()
        push    rax
        call    rand
        and     eax, 63
        shl     eax, 12
        or      dword ptr [rsp + 4], eax
        pop     rax
        ret

