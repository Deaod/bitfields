 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0CDD1BCh]  
 mov         edx,dword ptr [dev]  
 mov         ecx,edx  
 shl         eax,0Ch  
 sub         ecx,eax  
 xor         ecx,edx  
 and         ecx,3F000h  
 xor         ecx,edx  
 mov         dword ptr [dev],ecx  
 mov         esp,ebp  
 pop         ebp  
 ret  