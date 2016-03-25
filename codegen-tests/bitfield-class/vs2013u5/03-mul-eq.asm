 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[95D1BCh]  
 mov         ecx,dword ptr [dev]  
 mov         edx,ecx  
 and         edx,0FFFFF000h  
 imul        edx,eax  
 xor         edx,ecx  
 and         edx,3F000h  
 xor         edx,ecx  
 mov         dword ptr [dev],edx  
 mov         esp,ebp  
 pop         ebp  
 ret  