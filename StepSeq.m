clc;
close all;
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
end