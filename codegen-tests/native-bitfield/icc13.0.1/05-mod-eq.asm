L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       ecx, eax                                      #272.14
        mov       eax, DWORD PTR [rsp]                          #281.4
        mov       esi, eax                                      #281.4
        and       eax, 258048                                   #281.4
        xor       edx, edx                                      #281.4
        shr       eax, 12                                       #281.4
        and       esi, -258049                                  #281.4
        div       ecx                                           #281.4
        and       edx, 63                                       #281.4
        shl       edx, 12                                       #281.4
        or        esi, edx                                      #281.4
        mov       DWORD PTR [rsp], esi                          #281.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

