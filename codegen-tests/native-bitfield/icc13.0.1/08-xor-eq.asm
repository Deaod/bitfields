L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #284.4
        mov       ecx, edx                                      #284.4
        shr       edx, 12                                       #284.4
        and       ecx, -258049                                  #284.4
        xor       edx, eax                                      #284.4
        and       edx, 63                                       #284.4
        shl       edx, 12                                       #284.4
        or        ecx, edx                                      #284.4
        mov       DWORD PTR [rsp], ecx                          #284.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

