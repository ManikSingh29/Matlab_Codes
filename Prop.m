clc;
close all;
clear all;
% Example data
data1 = [1, 2, 3, 4, 5];
data2 = [2, 4, 6, 8, 10];

% Calculate Pearson correlation coefficient
corr_coef = corr(data1, data2);

% Display the result
fprintf('Pearson correlation coefficient: %.4f\n', corr_coef);
% Example data with three variables
data = randn(100, 3); % Generate random data

% Calculate the correlation matrix
correlation_matrix = corrcoef(data);

% Display the correlation matrix
disp('Correlation Matrix:');
disp(correlation_matrix);
% Create a heatmap of the correlation matrix with a specified colormap
figure;
heatmap(correlation_matrix, 'Colormap', jet, 'ColorScaling', 'log');
title('Correlation Heatmap');
colorbar;