 push        ebp  
 mov         ebp,esp  
 push        ecx  
 push        esi  
 call        dword ptr ds:[117D1BCh]  
 mov         esi,dword ptr [dev]  
 mov         ecx,eax  
 mov         eax,esi  
 xor         edx,edx  
 shr         eax,0Ch  
 and         esi,0FFFC0FFFh  
 and         eax,3Fh  
 div         eax,ecx  
 shl         edx,0Ch  
 or          edx,esi  
 mov         dword ptr [dev],edx  
 pop         esi  
 mov         esp,ebp  
 pop         ebp  
 ret  