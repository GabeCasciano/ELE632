%% A1
a_1 = [1, 1/6, -1/6];
b_1 = 1/3;

a_2 = [1, 1/4];
b_2 = [1];

delta = @(n) (n==0);

n = 0:5;

h_1 = filter(b_1, a_1, delta(n));
h_2 = filter(b_2, a_2, delta(n));

% stem(n, h_1);
% stem(n, h_2);

%% A2

%% A3


