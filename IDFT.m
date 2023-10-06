clear all
x1=input(‘enter the input sequence’)
N=length(x1)
for k=0:1:N-1
for n=0:1:N-1
p=exp(-i*2*pi*n*k/N)
x2(k+1,n+1)=p
end
end
Y=(x1*x2)
k=0:1:N-1
subplot(2,1,1)
stem(k,abs(Y))
xlabel('k')
ylabel('amplitude')
subplot(2,1,2)
stem(k,angle(Y))
xlabel('k')
ylabel('phase')