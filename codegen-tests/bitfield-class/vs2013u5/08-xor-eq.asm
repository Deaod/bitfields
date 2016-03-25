 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[114D1BCh]  
 mov         ecx,dword ptr [dev]  
 and         eax,3Fh  
 shl         eax,0Ch  
 xor         eax,ecx  
 mov         dword ptr [dev],eax  
 mov         esp,ebp  
 pop         ebp  
 ret  