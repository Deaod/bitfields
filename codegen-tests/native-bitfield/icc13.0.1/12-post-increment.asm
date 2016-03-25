L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #288.11
        mov       eax, edx                                      #288.11
        and       eax, 258048                                   #288.11
        and       edx, -258049                                  #288.11
        shr       eax, 12                                       #288.11
        mov       DWORD PTR [4+rsp], eax                        #288.4
        inc       eax                                           #288.11
        and       eax, 63                                       #288.11
        shl       eax, 12                                       #288.11
        or        edx, eax                                      #288.11
        mov       DWORD PTR [rsp], edx                          #288.11
        pop       rcx                                           #291.1
        ret                                                     #291.1

