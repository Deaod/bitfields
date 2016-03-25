test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, dword ptr [rsp + 4]
        shr     ecx, 12
        imul    ecx, eax
        and     ecx, 63
        shl     ecx, 12
        mov     eax, -258049
        and     eax, dword ptr [rsp + 4]
        or      eax, ecx
        mov     dword ptr [rsp + 4], eax
        pop     rax
        ret



