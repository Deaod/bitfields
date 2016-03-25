 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[110D1BCh]  
 mov         ecx,dword ptr [dev]  
 shl         eax,0Ch  
 or          eax,0FFFC0FFFh  
 and         eax,ecx  
 mov         dword ptr [dev],eax  
 mov         esp,ebp  
 pop         ebp  
 ret  