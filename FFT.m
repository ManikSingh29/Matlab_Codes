% Finding the FFT of a given signal and plotting its magnitude and phase spectrum
clc;
clear all;
close all;
x=input('Enter the sequence : ')
N=length(x)
xK=fft(x,N)
xn=ifft(xK)
subplot(3,1,1)
stem(abs(xK))
title('Magnitude of Fourier Spectrum')
xlabel('frequency')
ylabel('Magnitude')
subplot(3,1,2)
stem(angle(xK))
title('Phase of Fourier Spectrum')
xlabel('frequency')
ylabel('phase')
subplot(3,1,3)
stem(xn)
title('Inverse FFT')
xlabel('time');
ylabel('amplitude');