L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        and       eax, 63                                       #241.30
        shl       eax, 12                                       #241.39
        xor       DWORD PTR [rsp], eax                          #241.39
        pop       rcx                                           #291.1
        ret                                                     #291.1

