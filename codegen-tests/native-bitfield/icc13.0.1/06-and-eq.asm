L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #282.4
        mov       ecx, edx                                      #282.4
        shr       edx, 12                                       #282.4
        and       ecx, -258049                                  #282.4
        and       edx, eax                                      #282.4
        and       edx, 63                                       #282.4
        shl       edx, 12                                       #282.4
        or        ecx, edx                                      #282.4
        mov       DWORD PTR [rsp], ecx                          #282.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

