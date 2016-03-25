 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0B6D1BCh]  
 mov         ecx,dword ptr [dev]  
 and         eax,3Fh  
 and         ecx,0FFFC0FFFh  
 shl         eax,0Ch  
 or          ecx,eax  
 mov         dword ptr [dev],ecx  
 mov         esp,ebp  
 pop         ebp  
 ret  