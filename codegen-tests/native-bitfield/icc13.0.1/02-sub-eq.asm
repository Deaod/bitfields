L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #278.4
        mov       ecx, edx                                      #278.4
        shr       edx, 12                                       #278.4
        and       ecx, -258049                                  #278.4
        sub       edx, eax                                      #278.4
        and       edx, 63                                       #278.4
        shl       edx, 12                                       #278.4
        or        ecx, edx                                      #278.4
        mov       DWORD PTR [rsp], ecx                          #278.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

