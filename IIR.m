clc;
clear all;
wp=input('enter the passband frequency');
ws=input('enter the stopband frequency');
rp=input('enter the passband attenuation');
rs=input('enter the stopband attenuation');
fs=input('enter the sampling frequency');
w1=2*wp/fs;
w2=2*ws/fs;
if(wp<ws)
error('for HPF ws should be less than wp');
else
[n,wn]=buttord(w1,w2,rp,rs,'s');
[b,a]=butter(n,wn,'high','s');
w=0:0.01:pi;
[b1,a1]=bilinear(b,a,2);
[h,omega]=freqz(b1,a1,w);
gain=20*log(abs(h));
an=angle(h);
subplot(2,1,1);
plot(omega/pi,gain);
grid;
title('magnitude plot');
xlabel('normalized frequency');
ylabel('gain in dB');
subplot(2,1,2);
plot(omega/pi,an); grid;
title('phase plot');
xlabel('normalized frequency');
ylabel('phase angle');
end;