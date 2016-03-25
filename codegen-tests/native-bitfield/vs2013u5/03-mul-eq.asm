 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0A2D1BCh]  
 mov         ecx,dword ptr [dev]  
 and         ecx,0FFFFF000h  
 imul        ecx,eax  
 mov         eax,dword ptr [dev]  
 and         eax,0FFFC0FFFh  
 and         ecx,3F000h  
 or          ecx,eax  
 mov         dword ptr [dev],ecx  
 mov         esp,ebp  
 pop         ebp  
 ret  