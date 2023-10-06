clc;
close all;
clear all;
n=input('Enter n value for n-bit PCM System:');
n1= input('Enter number of samples in a period:');
L=2^n;

x=0: 2*pi/n1:4*pi;
s=8*sin(x);
subplot(3,1,1);
plot(x, s);  % Changed the x-axis values to match the signal
title('Analog Signal');
ylabel('Amplitude---->');
xlabel('Time---->');

subplot(3,1,2);
stem(s);grid on;
title('Sampled Signal'); % Corrected the typo "Sampled Sinal" to "Sampled Signal"
ylabel('Amplitude---->');
xlabel('Sample Number'); % Changed x-axis label to "Sample Number"

vmax=8;
vmin=-vmax;
del=(vmax-vmin)/L;
part=vmin:del:vmax;
code=vmin-(del/2):del:vmax+(del/2);
[ind,q]=quantiz(s,part,code);
l1=length(ind); % Corrected the typo "lenget" to "length"
l2=length(q);

for i=1:l1
    if(ind(i)~=0)
        ind(i)=ind(i)-1;
    end
end
for i=1:l2
    if(q(i)==vmin-(del/2))
        q(i)=vmin+(del/2);
    end
end

subplot(3,1,3); % Changed subplot index from 2 to 3
stem(q);grid on;
title('Quantized Signal');
ylabel('Amplitude---->');
xlabel('Sample Number'); % Changed x-axis label to "Sample Number"

figure
code=de2bi(ind,'left-msb');
k=1;
for i=1:l1
    for j=1:n
        coded(k)=code(i,j);
        j=j+1;
        k=k+1;
    end
    i=i+1;
end

subplot(2,1,1);
grid on;
stairs(coded);
axis([0 length(coded) -2 3]); % Adjusted the x-axis limits
title('Encoded Signal');
ylabel('Amplitude---->');
xlabel('Bit Index'); % Changed x-axis label to "Bit Index"

qunt=reshape(coded,n,length(coded)/n);
index=bi2de(qunt','left-msb');
q=del*index+vmin+(del/2);
subplot(2,1,2);
grid on;
plot(q);
title('Demodulated Signal');
ylabel('Amplitude---->');
xlabel('Time---->');
