L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #179.23
        mov       ecx, edx                                      #180.32
        shr       ecx, 12                                       #180.32
        and       edx, -258049                                  #181.23
        inc       ecx                                           #180.45
        and       ecx, 63                                       #180.50
        mov       eax, ecx                                      #181.55
        shl       eax, 12                                       #181.55
        or        edx, eax                                      #181.55
        mov       DWORD PTR [rsp], edx                          #181.9
        mov       DWORD PTR [4+rsp], ecx                        #287.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

