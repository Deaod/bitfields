L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        shl       eax, 12                                       #217.63
        mov       edx, DWORD PTR [rsp]                          #133.21
        mov       ecx, edx                                      #217.23
        sub       edx, eax                                      #217.63
        and       ecx, -258049                                  #217.23
        and       edx, 258048                                   #217.77
        or        ecx, edx                                      #217.77
        mov       DWORD PTR [rsp], ecx                          #133.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

