L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       ecx, DWORD PTR [rsp]                          #187.23
        mov       edx, ecx                                      #188.23
        and       edx, -258049                                  #188.23
        lea       eax, DWORD PTR [4096+rcx]                     #188.55
        shr       ecx, 12                                       #189.24
        and       eax, 258048                                   #188.97
        and       ecx, 63                                       #189.37
        or        edx, eax                                      #188.97
        mov       DWORD PTR [rsp], edx                          #188.9
        mov       DWORD PTR [4+rsp], ecx                        #288.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

