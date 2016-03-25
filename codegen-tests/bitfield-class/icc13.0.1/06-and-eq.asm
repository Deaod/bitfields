L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        shl       eax, 12                                       #233.54
        or        eax, -258049                                  #233.54
        and       DWORD PTR [rsp], eax                          #233.54
        pop       rcx                                           #291.1
        ret                                                     #291.1

