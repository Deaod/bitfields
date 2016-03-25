test_device():                       # @test_device()
        push    rax
        call    rand
        mov     eax, dword ptr [rsp + 4]
        shr     eax, 12
        add     eax, 63
        and     eax, 63
        mov     ecx, eax
        shl     ecx, 12
        mov     edx, -258049
        and     edx, dword ptr [rsp + 4]
        or      edx, ecx
        mov     dword ptr [rsp + 4], edx
        mov     dword ptr [rsp], eax
        pop     rax
        ret



