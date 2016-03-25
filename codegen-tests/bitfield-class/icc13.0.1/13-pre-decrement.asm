L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #194.23
        mov       ecx, edx                                      #195.32
        shr       ecx, 12                                       #195.32
        and       edx, -258049                                  #196.23
        add       ecx, 63                                       #195.45
        and       ecx, 63                                       #195.50
        mov       eax, ecx                                      #196.55
        shl       eax, 12                                       #196.55
        or        edx, eax                                      #196.55
        mov       DWORD PTR [rsp], edx                          #196.9
        mov       DWORD PTR [4+rsp], ecx                        #289.4
        pop       rcx                                           #291.1
        ret                                                     #291.1

