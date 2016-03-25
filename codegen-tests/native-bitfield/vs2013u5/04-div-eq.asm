 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[99D1BCh]  
 mov         ecx,eax  
 xor         edx,edx  
 mov         eax,dword ptr [dev]  
 shr         eax,0Ch  
 and         eax,3Fh  
 div         eax,ecx  
 mov         ecx,dword ptr [dev]  
 and         eax,3Fh  
 and         ecx,0FFFC0FFFh  
 shl         eax,0Ch  
 or          eax,ecx  
 mov         dword ptr [dev],eax  
 mov         esp,ebp  
 pop         ebp  
 ret  