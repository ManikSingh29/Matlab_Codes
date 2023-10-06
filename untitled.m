clc;
clear all;
close all;
x = [1, 2, 3, 4, 5];
N = length(x); % Length of the signal
autocorr_value = zeros(1, 2*N-1); % Initialize autocorrelation array

for n = 1:2*N-1
    autocorr_sum = 0;
    for l = 1:N-1
        if (n - l) > 0% Check for valid index
            autocorr_sum = autocorr_sum + x(n) * x(n - l);
        end
    end
    autocorr_value(n) = autocorr_sum;
end

% Display the autocorrelation value
subplot(2, 3, 1);
stem(autocorr_value); % Using 'stem' to display discrete values
title('Autocorrelation');
xlabel('Lag');
ylabel('Autocorrelation Value');
