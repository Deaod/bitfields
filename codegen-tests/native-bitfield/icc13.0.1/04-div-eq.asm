L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       ecx, eax                                      #272.14
        mov       eax, DWORD PTR [rsp]                          #280.4
        mov       esi, eax                                      #280.4
        and       eax, 258048                                   #280.4
        xor       edx, edx                                      #280.4
        shr       eax, 12                                       #280.4
        and       esi, -258049                                  #280.4
        div       ecx                                           #280.4
        and       eax, 63                                       #280.4
        shl       eax, 12                                       #280.4
        or        esi, eax                                      #280.4
        mov       DWORD PTR [rsp], esi                          #280.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

