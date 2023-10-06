clc;
clear all;
close all;

% Generate some example signals
x = randn(1, 100);  % Signal x
y = randn(1, 100);  % Signal y
z = randn(1, 100);  % Signal z

% Get user input for scaling factors and time shift
a = input('Enter the scaling factor "a": ');
b = input('Enter the scaling factor "b": ');
n0 = input('Enter the time shift "n0": ');

% Calculate correlations
corr1_linear = xcorr(a * x + b * y, z);  % Correlation of the linear combination
corr2_linear = a * xcorr(x, z) + b * xcorr(y, z);  % Linear combination of correlations

corr1_time_invariant = xcorr(x(n0+1:end), y);  % Correlation of the shifted signals
corr2_time_invariant = xcorr(x, y(n0+1:end));  % Correlation of the signals with a time shift

% Calculate cross-correlation
cross_corr = xcorr(x, y);

% Check linearity
tolerance = 1e-10;
is_linear = max(abs(corr1_linear - corr2_linear)) < tolerance;

% Check time-invariance
is_time_invariant = max(abs(corr1_time_invariant - corr2_time_invariant)) < tolerance;

% Check causality
is_causal = all(cross_corr(1:end/2) == 0);

% Display results
if is_linear
    disp('The correlation property is linear.');
else
    disp('The correlation property is not linear.');
end

if is_time_invariant
    disp('The correlation property is time-invariant.');
else
    disp('The correlation property is not time-invariant.');
end

if is_causal
    disp('The correlation property is causal.');
else
    disp('The correlation property is not causal.');
end
