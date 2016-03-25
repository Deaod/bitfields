L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #286.4
        mov       esi, edx                                      #286.4
        and       edx, 258048                                   #286.4
        mov       ecx, eax                                      #286.4
        shr       edx, 12                                       #286.4
        and       esi, -258049                                  #286.4
        shr       edx, cl                                       #286.4
        shl       edx, 12                                       #286.4
        or        esi, edx                                      #286.4
        mov       DWORD PTR [rsp], esi                          #286.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

