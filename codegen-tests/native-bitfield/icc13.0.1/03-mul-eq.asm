L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #279.4
        mov       ecx, edx                                      #279.4
        shr       edx, 12                                       #279.4
        and       ecx, -258049                                  #279.4
        imul      edx, eax                                      #279.4
        and       edx, 63                                       #279.4
        shl       edx, 12                                       #279.4
        or        ecx, edx                                      #279.4
        mov       DWORD PTR [rsp], ecx                          #279.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

