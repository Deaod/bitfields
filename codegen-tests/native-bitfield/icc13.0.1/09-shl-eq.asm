L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #285.4
        mov       esi, edx                                      #285.4
        and       edx, -4096                                    #285.4
        mov       ecx, eax                                      #285.4
        shr       edx, 12                                       #285.4
        and       esi, -258049                                  #285.4
        shl       edx, cl                                       #285.4
        and       edx, 63                                       #285.4
        shl       edx, 12                                       #285.4
        or        esi, edx                                      #285.4
        mov       DWORD PTR [rsp], esi                          #285.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

