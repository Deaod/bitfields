 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0DDD1BCh]  
 mov         ecx,dword ptr [dev]  
 mov         eax,dword ptr [dev]  
 and         ecx,0FFFFF000h  
 add         ecx,1000h  
 and         eax,0FFFC0FFFh  
 and         ecx,3F000h  
 or          ecx,eax  
 mov         dword ptr [dev],ecx  
 mov         eax,dword ptr [dev]  
 shr         eax,0Ch  
 and         eax,3Fh  
 mov         dword ptr [dev],eax  
 mov         esp,ebp  
 pop         ebp  
 ret  