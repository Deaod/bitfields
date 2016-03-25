L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       ecx, DWORD PTR [rsp]                          #202.23
        mov       edx, ecx                                      #203.23
        and       edx, -258049                                  #203.23
        lea       eax, DWORD PTR [-4096+rcx]                    #203.55
        shr       ecx, 12                                       #204.24
        and       eax, 258048                                   #203.97
        and       ecx, 63                                       #204.37
        or        edx, eax                                      #203.97
        mov       DWORD PTR [rsp], edx                          #203.9
        mov       DWORD PTR [4+rsp], ecx                        #290.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

