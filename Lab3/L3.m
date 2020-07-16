%% Part A

% A1
x = @(n, a, b, A, B) A.*cos(a.*n) + B.*cos(b.*n);

a = 2.4*pi;
b = 3.2*pi;
A = 4;
B = 2;

OHM = (a + b)/2;
No = (2*pi)/OHM;

% A2

x_1 = @(n) x(n, a, b, A, B);
sampling_rate = 1000;
n = (-No):(1/sampling_rate):(No);
X_1 = DFS(x_1(n));

subplot(2,1,1);
plot(abs(X_1));
title("DFS |X(r)|");

subplot(2,1,2);
plot(angle(X_1));
title("DFS \angle X(r)");

plot(x_1(n));

% A3

No = 6;
y = zeros(No);
y(1) = 2;
y(2) = 1;
y(3) = 0;
y(4) = 1;
y(5) = 2;
y(6) = 3;

Y = DFS(y);

subplot(2,1,1);
stem(abs(Y));
title("DFS |Y(r)|");

subplot(2,1,2);
stem(angle(Y));
title("DFS \angle Y(r)");

%% Part B

% B1

K1 = @(r) 1*(4 >= abs(r));
K = @(r) K1(r) + K1(abs(r)-32);

r = -37:1:37;
k = IDFS(K(r));
stem(k);

% B2
K_2 = @(r) K(r).*exp(-i*5*((2*pi)/length(X))*r);
k_2 = IDFS(K_2(r));
stem(k_2);

%% Part C

% C1
H = @(r) 1*(4 >= abs(r));
No = 32;
r = (-No/2):1:(No/2);
H1 = H(r);
stem(H(r));

stem(IDFS(H(r)));

% C2
x1 = @(n) 4.*cos((pi*n)/8);
n = 0:1:No;
x1_out = x1(n);
X1 = DFS(x1_out);
Y1 = H1 .* X1;
y1 = IDFS(Y1);

stem(y1);

% C3
x2 = @(n) 4.*cos((pi*n)/2);
n = 0:1:No;
x2_out = x2(n)
X2 = DFS(x2_out);
Y2 = X2 .* H(r);
y2 = IDFS(Y2);

stem(y2);




