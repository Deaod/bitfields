test_device():                       # @test_device()
        push    rax
        call    rand
        mov     edx, dword ptr [rsp + 4]
        shr     edx, 12
        and     edx, 63
        mov     cl, al
        shr     edx, cl
        and     edx, 63
        shl     edx, 12
        mov     eax, -258049
        and     eax, dword ptr [rsp + 4]
        or      eax, edx
        mov     dword ptr [rsp + 4], eax
        pop     rax
        ret



