 push        ebp  
 mov         ebp,esp  
 push        ecx  
 push        esi  
 call        dword ptr ds:[3AD1BCh]  
 mov         esi,dword ptr [dev]  
 mov         ecx,eax  
 mov         eax,esi  
 xor         edx,edx  
 and         eax,3F000h  
 div         eax,ecx  
 xor         eax,esi  
 and         eax,3F000h  
 xor         eax,esi  
 mov         dword ptr [dev],eax  
 pop         esi  
 mov         esp,ebp  
 pop         ebp  
 ret  