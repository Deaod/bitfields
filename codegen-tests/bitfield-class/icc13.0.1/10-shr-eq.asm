L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #173.21
        mov       esi, edx                                      #249.23
        and       edx, 258048                                   #249.56
        mov       ecx, eax                                      #249.80
        shr       edx, cl                                       #249.80
        and       esi, -258049                                  #249.23
        and       edx, 258048                                   #249.87
        or        esi, edx                                      #249.87
        mov       DWORD PTR [rsp], esi                          #173.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

