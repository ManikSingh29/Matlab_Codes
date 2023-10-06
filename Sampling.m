%% SAMPLING 

clc;
clear all;
close all;
f1 = 3;
f2 = 23;
t = -0.4:0.0001:0.4;
x = cos(2*pi*f1*t) + cos(2*pi*f2*t);
figure(1);
plot(t,x,'-.r');
xlabel('Time----->');
ylabel('Amplitude');
title('Original Signal');

%CASE 1: (fs < 2fm)
fs1 = 1.4*f2;
ts1 = 1/fs1;
n1 = -0.4:ts1:0.4;
xs1 = cos(2*pi*f1*n1) + cos(2*pi*f2*n1);
figure(2);
stem(n1,xs1);
hold on;
plot(t,x,'-.r');
hold off;
legend("fs<2fm");

%CASE 2: (fs = 2fm)
fs2 = 2*f2;
ts2 = 1/fs2;
n2 = -0.4:ts2:0.4;
xs2 = cos(2*pi*f1*n2) + cos(2*pi*f2*n2);
figure(3);
stem(n2,xs2);
hold on;
plot(t,x,'-.r');
hold off;
legend("fs=2fm");

%CASE 3: (fs > 2fm)
fs3 = 7*f2;
ts3 = 1/fs3;
n3 = -0.4:ts3:0.4;
xs3 = cos(2*pi*f1*n3) + cos(2*pi*f2*n3);
figure(4);
stem(n3,xs3);
hold on;
plot(t,x,'-.r');
hold off;
legend("fs>2fm");