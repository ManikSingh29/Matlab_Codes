% Ramp
clc
close all
x = linspace(-5,5);
y = sinc(x);
subplot(1,2,1);plot(x,y)
xlabel('time');
ylabel('amplitude');
title('sinc function');
subplot(1,2,2);stem(x,y);
xlabel('time');
ylabel('amplitude');
title('sinc function');