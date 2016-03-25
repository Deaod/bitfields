 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0D7D1BCh]  
 mov         ecx,dword ptr [dev]  
 shl         eax,0Ch  
 sub         ecx,eax  
 mov         eax,dword ptr [dev]  
 and         ecx,3F000h  
 and         eax,0FFFC0FFFh  
 or          ecx,eax  
 mov         dword ptr [dev],ecx  
 mov         esp,ebp  
 pop         ebp  
 ret  