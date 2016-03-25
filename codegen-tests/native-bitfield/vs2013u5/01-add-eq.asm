 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[120D1BCh]  
 shl         eax,0Ch  
 add         eax,dword ptr [dev]  
 mov         ecx,dword ptr [dev]  
 and         eax,3F000h  
 and         ecx,0FFFC0FFFh  
 or          eax,ecx  
 mov         dword ptr [dev],eax  
 mov         esp,ebp  
 pop         ebp  
 ret  