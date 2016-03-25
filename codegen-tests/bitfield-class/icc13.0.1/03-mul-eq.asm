L__routine_start__Z11test_devicev_0:
test_device():
        push      rsi                                           #270.20
        call      rand                                          #272.14
        mov       edx, DWORD PTR [rsp]                          #138.21
        mov       ecx, edx                                      #221.23
        and       edx, -4096                                    #221.56
        and       ecx, -258049                                  #221.23
        imul      edx, eax                                      #221.79
        and       edx, 258048                                   #221.86
        or        ecx, edx                                      #221.86
        mov       DWORD PTR [rsp], ecx                          #138.9
        pop       rcx                                           #291.1
        ret                                                     #291.1

