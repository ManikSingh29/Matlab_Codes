clc;
close all;
subplot(6,2,1);
n1=-3;
n2=4;
n0=0;
n=[n1:n2];
x=[(n-n0)==0]
stem(n,x)
subplot(6,2,2);
n1 = -4;
n2 = 5;
n0 = 0;
[y, n] = stepseq(n0, n1, n2);
function [y, n] = stepseq(n0, n1, n2)
    if ((n0 < n1) || (n0 > n2) || (n1 > n2))
        error('Arguments must satisfy n1 <= n0 <= n2');
    end
    
    n = n1:n2;
    y = (n - n0) >= 0;
    
    stem(n, y);
    xlabel('n');
    ylabel('amplitude');
    title('unit step');
  
fs = 10000;
t = 0:1/fs:1.5;
x = sawtooth(2*pi*50*t);
subplot(6,2,3);
plot(t,x), axis([0 0.2 -1 1]);
xlabel('t'),ylabel('x(t)')
title('sawtooth signal');
N=2; fs = 500;n = 0:1/fs:2;
x = sawtooth(2*pi*50*n);
subplot(6,2,4);
stem(n,x), axis([0 0.2 -1 1]);
xlabel('n'),ylabel('x(n)')
title('sawtooth sequence')


fs = 10000;t = -1:1/fs:1;
x1 = tripuls(t,20e-3); 
x2 = rectpuls(t,20e-3);
subplot(6,2,5),plot(t,x1), axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)');
ylabel('Amplitude');
title('Triangular Aperiodic Pulse')
subplot(6,2,6),plot(t,x2), axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)');
ylabel('Amplitude'); 
title('Rectangular Aperiodic Pulse')
set(gcf,'Color',[1 1 1]),

n=9;
t=0:n;
subplot(6,2,7)
plot(t);
xlabel('t');
ylabel('amplitude');
title ('ramp')
subplot(6,2,8)
stem(t);
xlabel('t');
ylabel('amplitude');
title ('ramp-discrete')

x = linspace(-5,5);
y = sinc(x);
subplot(6,2,9);plot(x,y)
xlabel('time');
ylabel('amplitude');
title('sinc function');
subplot(6,2,10);stem(x,y);
xlabel('time');
ylabel('amplitude');
title('sinc discrete');


end