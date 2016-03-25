L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        shl       eax, 12                                       #213.63
        mov       edx, DWORD PTR [rsp]                          #128.21
        mov       ecx, edx                                      #213.23
        add       edx, eax                                      #213.63
        and       ecx, -258049                                  #213.23
        and       edx, 258048                                   #213.77
        or        ecx, edx                                      #213.77
        mov       DWORD PTR [rsp], ecx                          #128.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

