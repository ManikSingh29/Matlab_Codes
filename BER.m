clc;
clear all;
close all;
N = 10^4; % number of bits or symbols

rand('state', 100); % initializing the rand() function

randn('state', 200); % initializing the randn() function

ip = rand(1, N) > 0.5; % generating 0,1 with equal probability
ipD = mod(filter(1, [1 -1], ip), 2); % differential encoding y[n] = y[n-1] + x[n]

s = 2 * ipD - 1; % BPSK modulation 0-1: 10

n = 1 / sqrt(2) * (randn(1, N) + 1i * randn(1, N)); % white Gaussian noise, variance

Eb_NO_dB = [-3:10]; % multiple Eb/NO values
nErr_dbpsk_coh = zeros(1, length(Eb_NO_dB));

for ii = 1:length(Eb_NO_dB)
    y = s + 10^(-Eb_NO_dB(ii) / 20) * n; % additive white Gaussian noise
    ipDHat_coh = real(y) > 0; % coherent demodulation
    ipHat_coh = mod(filter([1 -1], 1, ipDHat_coh), 2); % differential decoding
    nErr_dbpsk_coh(ii) = sum(ip ~= ipHat_coh); % counting the number of errors
end

simber_dbpsk_coh = nErr_dbpsk_coh / N;
theoryBer_dbpsk_coh = 0.5 * erfc(sqrt(10.^(Eb_NO_dB / 10))); % theoretical BER

figure;
semilogy(Eb_NO_dB, theoryBer_dbpsk_coh, 'b.-');
hold on;
semilogy(Eb_NO_dB, simber_dbpsk_coh, 'mx-');
axis([-3 10 1e-6 1]);
grid on;
legend('Theory', 'Simulation');
xlabel('Eb/No, dB');
ylabel('Bit Error Rate');
title('Bit error probability curve for coherent demodulation of DBPSK');
