L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #289.13
        mov       ecx, edx                                      #289.13
        shr       ecx, 12                                       #289.13
        and       edx, -258049                                  #289.13
        add       ecx, 63                                       #289.13
        and       ecx, 63                                       #289.13
        mov       eax, ecx                                      #289.13
        shl       eax, 12                                       #289.13
        or        edx, eax                                      #289.13
        mov       DWORD PTR [rsp], edx                          #289.13
        mov       DWORD PTR [4+rsp], ecx                        #289.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

