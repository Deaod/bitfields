 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[17D1BCh]  
 mov         eax,dword ptr [dev]  
 shr         eax,0Ch  
 and         eax,3Fh  
 mov         dword ptr [dev],eax  
 mov         ecx,dword ptr [dev]  
 mov         eax,dword ptr [dev]  
 shr         ecx,0Ch  
 and         eax,0FFFC0FFFh  
 dec         ecx  
 and         ecx,3Fh  
 shl         ecx,0Ch  
 or          ecx,eax  
 mov         dword ptr [dev],ecx  
 mov         esp,ebp  
 pop         ebp  
 ret  