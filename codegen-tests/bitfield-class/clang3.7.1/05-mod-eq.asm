test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, eax
        mov     eax, dword ptr [rsp + 4]
        mov     esi, eax
        and     esi, -258049
        shr     eax, 12
        and     eax, 63
        xor     edx, edx
        div     ecx
        shl     edx, 12
        or      edx, esi
        mov     dword ptr [rsp + 4], edx
        pop     rax
        ret

