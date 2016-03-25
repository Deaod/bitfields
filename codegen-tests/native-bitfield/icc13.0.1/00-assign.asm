L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        and       eax, 63                                       #276.4
        mov       edx, DWORD PTR [rsp]                          #276.4
        shl       eax, 12                                       #276.4
        and       edx, -258049                                  #276.4
        or        edx, eax                                      #276.4
        mov       DWORD PTR [rsp], edx                          #276.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

