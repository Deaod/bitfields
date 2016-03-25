L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       ecx, eax                                      #272.14
        mov       eax, DWORD PTR [rsp]                          #148.21
        mov       esi, eax                                      #229.23
        shr       eax, 12                                       #229.58
        xor       edx, edx                                      #229.79
        and       eax, 63                                       #229.71
        and       esi, -258049                                  #229.23
        div       ecx                                           #229.79
        shl       edx, 12                                       #229.87
        or        esi, edx                                      #229.87
        mov       DWORD PTR [rsp], esi                          #148.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

