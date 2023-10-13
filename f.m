clc;
close all;
clear all;

n = 6;        % Filter order
fc = 300;     % Cutoff frequency
fs = 1000;    % Sampling frequency

%% LPF
[b, a] = cheby1(n, 0.5, fc / (fs / 2), 'low');
[h, w] = freqz(b, a);
subplot(2, 4, 1)
plot(w / pi, 20 * log10(abs(h)))
title('LPF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude (dB)')
a = angle(h);
subplot(2, 4, 5)
plot(w / pi, rad2deg(a))
title('LPF phase')
xlabel('Normalized frequency')
ylabel('Degrees')

%% HPF
[b, a] = cheby1(n, 0.5, fc / (fs / 2), 'high');
[h, w] = freqz(b, a);
subplot(2, 4, 2)
plot(w / pi, 20 * log10(abs(h)))
title('HPF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude (dB)')
a = angle(h);
subplot(2, 4, 6)
plot(w / pi, rad2deg(a))
title('HPF phase')
xlabel('Normalized frequency')
ylabel('Degrees')

%% BPF
w1 = [0.35 0.69];
[b, a] = cheby1(n, 0.5, w1, 'bandpass');
[h, w] = freqz(b, a);
subplot(2, 4, 3)
plot(w / pi, 20 * log10(abs(h)))
title('BPF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude (dB)')
a = angle(h);
subplot(2, 4, 7)
plot(w / pi, rad2deg(a))
title('BPF phase')
xlabel('Normalized frequency')
ylabel('Degrees')

%% BSF
w1 = [0.35 0.69];
[b, a] = cheby1(n, 0.5, w1, 'stop');
[h, w] = freqz(b, a);
subplot(2, 4, 4)
plot(w / pi, 20 * log10(abs(h)))
title('BSF magnitude')
xlabel('Normalized frequency')
ylabel('Magnitude (dB)')
a = angle(h);
subplot(2, 4, 8)
plot(w / pi, rad2deg(a))
title('BSF phase')
xlabel('Normalized frequency')
ylabel('Degrees')