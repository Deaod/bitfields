test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, eax
        mov     eax, dword ptr [rsp + 4]
        mov     esi, eax
        and     esi, -258049
        and     eax, 258048
        xor     edx, edx
        div     ecx
        and     eax, 258048
        or      eax, esi
        mov     dword ptr [rsp + 4], eax
        pop     rax
        ret

