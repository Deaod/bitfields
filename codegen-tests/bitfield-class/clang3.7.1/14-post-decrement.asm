test_device():                       # @test_device()
        push    rax
        call    rand
        mov     eax, dword ptr [rsp + 4]
        mov     ecx, eax
        and     ecx, -258049
        lea     edx, [rax + 258048]
        and     edx, 258048
        or      edx, ecx
        mov     dword ptr [rsp + 4], edx
        shr     eax, 12
        and     eax, 63
        mov     dword ptr [rsp], eax
        pop     rax
        ret

