 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0D6D1BCh]  
 mov         ecx,dword ptr [dev]  
 mov         edx,ecx  
 shr         edx,0Ch  
 and         ecx,0FFFC0FFFh  
 dec         edx  
 and         edx,3Fh  
 mov         eax,edx  
 shl         eax,0Ch  
 or          ecx,eax  
 mov         dword ptr [dev],ecx  
 mov         dword ptr [dev],edx  
 mov         esp,ebp  
 pop         ebp  
 ret  