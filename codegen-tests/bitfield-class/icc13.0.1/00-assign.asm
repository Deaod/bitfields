L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        and       eax, 63                                       #209.55
        mov       edx, DWORD PTR [rsp]                          #39.24
        shl       eax, 12                                       #209.64
        and       edx, -258049                                  #209.23
        or        edx, eax                                      #209.64
        mov       DWORD PTR [rsp], edx                          #39.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

