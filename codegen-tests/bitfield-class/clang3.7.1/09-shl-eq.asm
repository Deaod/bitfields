test_device():                       # @test_device()
        push    rax
        call    rand
        mov     edx, dword ptr [rsp + 4]
        mov     esi, edx
        and     esi, -258049
        and     edx, 258048
        mov     cl, al
        shl     edx, cl
        and     edx, 258048
        or      edx, esi
        mov     dword ptr [rsp + 4], edx
        pop     rax
        ret

