L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #290.11
        mov       eax, edx                                      #290.11
        and       eax, 258048                                   #290.11
        and       edx, -258049                                  #290.11
        shr       eax, 12                                       #290.11
        mov       DWORD PTR [4+rsp], eax                        #290.4
        add       eax, 63                                       #290.11
        and       eax, 63                                       #290.11
        shl       eax, 12                                       #290.11
        or        edx, eax                                      #290.11
        mov       DWORD PTR [rsp], edx                          #290.11
        pop       rcx                                           #291.1
        ret                                                     #291.1

