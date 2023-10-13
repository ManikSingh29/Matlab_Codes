clc;
close all;
clear all;
n=6;
fc=300;
fs=1000;
%% LPF
[b,a]=butter(n,fc/(fs/2),'low');
[h,w]=freqz(b,a)
subplot(2,4,1)
plot(w/pi,20*log(h))
title('LPF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude(dB)')
a=angle(h)
subplot(2,4,5)
plot(w/pi,a)
title('LPF phase')
xlabel('Normalized frequency')
ylabel('Degrees')
%% HPF
[b,a]=butter(n,fc/(fs/2),'high');
[h,w]=freqz(b,a)
subplot(2,4,2)
plot(w/pi,20*log(h))
title('HPF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude(dB)')
a=angle(h)
subplot(2,4,6)
plot(w/pi,a)
title('HPF phase')
xlabel('Normalized frequency')
ylabel('Degrees')
%% BPF
w1=[0.35 0.69]
[b,a]=butter(n,w1,'bandpass');
[h,w]=freqz(b,a)
subplot(2,4,3)
plot(w/pi,20*log(h))
title('BPF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude(dB)')
a=angle(h)
subplot(2,4,7)
plot(w/pi,a)
title('BPF phase')
xlabel('Normalized frequency')
ylabel('Degrees')
%% BSF
w1=[0.35 0.69]
[b,a]=butter(n,w1,'stop');
[h,w]=freqz(b,a)
subplot(2,4,4)
plot(w/pi,20*log(h))
title('BSF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude(dB)')
a=angle(h)
subplot(2,4,8)
plot(w/pi,a)
title('BSF phase')
xlabel('Normalized frequency')
ylabel('Degrees')