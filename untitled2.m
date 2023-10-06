clc;
clear all;
close all;
x = [1, 2, 3, 4, 5];
N = length(x); % Length of the signal
autocorr_value = zeros(1, 9);

lag_values = -4:4;

for lag_idx = 1:length(lag_values)
    lag = lag_values(lag_idx);
    autocorr_sum = 0;
    for n = 1:N
        n_lag = n - lag;
        if n_lag >= 1 && n_lag <= N
            autocorr_sum = autocorr_sum + x(n) * x(n_lag);
        end
    end
    autocorr_value(lag_idx) = autocorr_sum;
end

% Display the autocorrelation values
subplot(2, 3, 1);
stem(lag_values, autocorr_value); % Using 'stem' to display discrete values
title('Autocorrelation');
xlabel('Lag');
ylabel('Autocorrelation Value');
