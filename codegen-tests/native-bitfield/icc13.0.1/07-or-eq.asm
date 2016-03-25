L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #283.4
        mov       ecx, edx                                      #283.4
        shr       edx, 12                                       #283.4
        and       ecx, -258049                                  #283.4
        or        edx, eax                                      #283.4
        and       edx, 63                                       #283.4
        shl       edx, 12                                       #283.4
        or        ecx, edx                                      #283.4
        mov       DWORD PTR [rsp], ecx                          #283.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

