test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, eax
        mov     eax, dword ptr [rsp + 4]
        shr     eax, 12
        and     eax, 63
        xor     edx, edx
        div     ecx
        shl     edx, 12
        mov     eax, -258049
        and     eax, dword ptr [rsp + 4]
        or      eax, edx
        mov     dword ptr [rsp + 4], eax
        pop     rax
        ret



