test_device():                       # @test_device()
        push    rax
        call    rand
        mov     ecx, dword ptr [rsp + 4]
        mov     edx, ecx
        and     edx, -258049
        and     ecx, 258048
        imul    ecx, eax
        and     ecx, 258048
        or      ecx, edx
        mov     dword ptr [rsp + 4], ecx
        pop     rax
        ret

