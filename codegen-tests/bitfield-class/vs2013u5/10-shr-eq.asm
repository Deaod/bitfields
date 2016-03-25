 push        ebp  
 mov         ebp,esp  
 push        ecx  
 push        esi  
 call        dword ptr ds:[9BD1BCh]  
 mov         edx,dword ptr [dev]  
 mov         ecx,eax  
 mov         esi,edx  
 and         esi,3F000h  
 shr         esi,cl  
 xor         esi,edx  
 and         esi,3F000h  
 xor         esi,edx  
 mov         dword ptr [dev],esi  
 pop         esi  
 mov         esp,ebp  
 pop         ebp  
 ret  