L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       ecx, eax                                      #272.14
        mov       eax, DWORD PTR [rsp]                          #143.21
        mov       esi, eax                                      #225.23
        and       eax, 258048                                   #225.56
        xor       edx, edx                                      #225.79
        and       esi, -258049                                  #225.23
        div       ecx                                           #225.79
        and       eax, 258048                                   #225.86
        or        esi, eax                                      #225.86
        mov       DWORD PTR [rsp], esi                          #143.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

