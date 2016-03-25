test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, dword ptr [rsp + 4]
        shl     eax, 12
        add     eax, ecx
        and     ecx, -258049
        and     eax, 258048
        or      eax, ecx
        mov     dword ptr [rsp + 4], eax
        pop     rax
        ret

