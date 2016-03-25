 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[105D1BCh]  
 mov         ecx,dword ptr [dev]  
 shl         eax,0Ch  
 add         eax,ecx  
 xor         eax,ecx  
 and         eax,3F000h  
 xor         eax,ecx  
 mov         dword ptr [dev],eax  
 mov         esp,ebp  
 pop         ebp  
 ret  