clc;
close all;
fs = 10000;
t = 0:1/fs:1.5;
x = sawtooth(2*pi*50*t);
subplot(2,2,1);
plot(t,x), axis([0 0.2 -1 1]);
xlabel('t'),ylabel('x(t)')
title('sawtooth signal');
N=2; fs = 500;n = 0:1/fs:2;
x = sawtooth(2*pi*50*n);
subplot(2,2,2);
stem(n,x), axis([0 0.2 -1 1]);
xlabel('n'),ylabel('x(n)')
title('sawtooth sequence')


fs = 10000;t = -1:1/fs:1;
x1 = tripuls(t,20e-3); 
x2 = rectpuls(t,20e-3);
subplot(2,2,3),plot(t,x1), axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)');
ylabel('Amplitude');
title('Triangular Aperiodic Pulse')
subplot(2,2,4),plot(t,x2), axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)');
ylabel('Amplitude'); 
title('Rectangular Aperiodic Pulse')
set(gcf,'Color',[1 1 1]),