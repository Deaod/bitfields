 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0E7D1BCh]  
 mov         ecx,dword ptr [dev]  
 lea         eax,[ecx-1000h]  
 xor         eax,ecx  
 and         eax,3F000h  
 xor         eax,ecx  
 shr         ecx,0Ch  
 and         ecx,3Fh  
 mov         dword ptr [dev],eax  
 mov         dword ptr [dev],ecx  
 mov         esp,ebp  
 pop         ebp  
 ret  