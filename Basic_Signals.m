%% 1. BASIC SIGNALS 
clc;
close all;
clear all;
n=-50:0.1:50;
l1=length(n);
t=0:0.1:2*pi; 
 
%Unit Impulse
for i=1:l1   
    if (n(i)==0)     
        x(i)=1;   
    else         
        x(i)=0;    
    end 
end 
subplot(2,3,1);
plot(n,x);
xlabel("n");
ylabel("x(n)");
title("unit impulse"); 
 
%Unit step
for i=1:l1  
    if (n(i)<0)         
        x(i)=0;     
    else         
        x(i)=1;    
    end 
end 
subplot(2,3,2); 
plot(n,x,'g'); 
xlabel("n"); 
ylabel("x(n)");
title("unit step"); 
 
 
 
%Unit Ramp 
for i=1:l1     
    if (n(i)>=0)         
        x(i)=n(i);    
    else        
   x(i)=0;    
    end 
end 
subplot(2,3,3);
plot(n,x,'r'); xlabel("n"); ylabel("x(n)"); 
title("Ramp function"); 
 
%Exponential
subplot(2,3,4); 
a=0:0.1:5;
plot(a,exp(a),'b'); xlabel("t"); ylabel("x(t)"); 
title("Exponential signal"); 
 
% Sine function
subplot(2,3,5); 
plot(t,sin(t),'c'); xlabel("t"); ylabel("x(t)");
title("Sine signal"); 
 
 
 
% Cosine function
subplot(2,3,6);
plot(t,cos(t),'m'); xlabel("t"); ylabel("x(t)"); 
title("Cosine signal");