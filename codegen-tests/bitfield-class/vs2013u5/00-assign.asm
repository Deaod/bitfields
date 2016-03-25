 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[4D1BCh]  
 mov         ecx,dword ptr [dev]  
 shl         eax,0Ch  
 xor         eax,ecx  
 and         eax,3F000h  
 xor         eax,ecx  
 mov         dword ptr [dev],eax  
 mov         esp,ebp  
 pop         ebp  
 ret  