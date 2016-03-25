test_device():                       # @test_device()
        push    rax
        call    rand
        mov     eax, dword ptr [rsp + 4]
        mov     ecx, eax
        shr     ecx, 12
        inc     ecx
        and     ecx, 63
        and     eax, -258049
        mov     edx, ecx
        shl     edx, 12
        or      edx, eax
        mov     dword ptr [rsp + 4], edx
        mov     dword ptr [rsp], ecx
        pop     rax
        ret

