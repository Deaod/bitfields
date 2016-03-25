L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #168.21
        mov       esi, edx                                      #245.23
        and       edx, -4096                                    #245.56
        mov       ecx, eax                                      #245.80
        shl       edx, cl                                       #245.80
        and       esi, -258049                                  #245.23
        and       edx, 258048                                   #245.87
        or        esi, edx                                      #245.87
        mov       DWORD PTR [rsp], esi                          #168.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

