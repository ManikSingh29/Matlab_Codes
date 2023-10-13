clc;
close all;
clear all;

n = 6;
fc = 300;
fs = 1000;

%% LPF
Wp = fc / (fs / 2);
[b, a] = cheby2(n1, 0.5, Wn1, 'low');
[h, w] = freqz(b, a);
subplot(2, 4, 1);
plot(w/pi, 20*log10(abs(h)));
title('LPF magnitude');
xlabel('Normalized frequency');
ylabel('Magnitude(dB)');
a = angle(h);
subplot(2, 4, 5);
plot(w/pi, a);
title('LPF phase');
xlabel('Normalized frequency');
ylabel('Radians');

%% HPF
[n2, Wn2] = cheb2ord(0.5, 0.4, 3, 20);
[b, a] = cheby1(n2, 0.5, Wn2, 'high');
[h, w] = freqz(b, a);
subplot(2, 4, 2);
plot(w/pi, 20*log10(abs(h)));
title('HPF magnitude');
xlabel('Normalized frequency');
ylabel('Magnitude(dB)');
a = angle(h);
subplot(2, 4, 6);
plot(w/pi, a);
title('HPF phase');
xlabel('Normalized frequency');
ylabel('Radians');

%% BPF
w1 = [0.35 0.69];
[n3, Wn3] = cheb2ord();
[b, a] = cheby2(n3, 0.5, Wn3);
[h, w] = freqz(b, a);
subplot(2, 4, 3);
plot(w/pi, 20*log10(abs(h)));
title('BPF magnitude');
xlabel('Normalized frequency');
ylabel('Magnitude(dB)');
a = angle(h);
subplot(2, 4, 7);
plot(w/pi, a);
title('BPF phase');
xlabel('Normalized frequency');
ylabel('Radians');

%% BSF
w1 = [0.35 0.69];
[n4, Wn4] = cheb2ord(w1, 0.35, 0.69, 3, 20);
[b, a] = cheby2(n4, 0.5, Wn4, 'stop');
[h, w] = freqz(b, a);
subplot(2, 4, 4);
plot(w/pi, 20*log10(abs(h)));
title('BSF magnitude');
xlabel('Normalized frequency');
ylabel('Magnitude(dB)');
a = angle(h);
subplot(2, 4, 8);
plot(w/pi, a);
title('BSF phase');
xlabel('Normalized frequency');
ylabel('Radians');
