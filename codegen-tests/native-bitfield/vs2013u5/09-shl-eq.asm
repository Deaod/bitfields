 push        ebp  
 mov         ebp,esp  
 push        ecx  
 call        dword ptr ds:[0DED1BCh]  
 mov         edx,dword ptr [dev]  
 mov         ecx,eax  
 mov         eax,dword ptr [dev]  
 shr         edx,0Ch  
 and         eax,0FFFC0FFFh  
 and         edx,3Fh  
 shl         edx,cl  
 and         edx,3Fh  
 shl         edx,0Ch  
 or          edx,eax  
 mov         dword ptr [dev],edx  
 mov         esp,ebp  
 pop         ebp  
 ret  