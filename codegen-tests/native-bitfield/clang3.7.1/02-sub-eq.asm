test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, dword ptr [rsp + 4]
        shl     eax, 12
        sub     ecx, eax
        and     ecx, 258048
        mov     eax, -258049
        and     eax, dword ptr [rsp + 4]
        or      eax, ecx
        mov     dword ptr [rsp + 4], eax
        pop     rax
        ret



