%% F1

%% F2
N = 45;
[a, b] = moving_average_filter(N);

%% F3
n = 0:N;
delta = @(n) (n==0);
x = @(n) cos((pi*n)/5)+delta(n-30)-delta(n-35);

y = filter(b, a, x(n));

stem(n, y);

function [a,b] = moving_average_filter(N)
    a = 1;
    b = (1/N)*ones(1,N);
end 