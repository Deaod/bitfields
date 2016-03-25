 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[133D1BCh]  
 mov         ecx,eax  
 xor         edx,edx  
 mov         eax,dword ptr [dev]  
 shr         eax,0Ch  
 and         eax,3Fh  
 div         eax,ecx  
 mov         eax,dword ptr [dev]  
 and         edx,3Fh  
 and         eax,0FFFC0FFFh  
 shl         edx,0Ch  
 or          edx,eax  
 mov         dword ptr [dev],edx  
 mov         esp,ebp  
 pop         ebp  
 ret  