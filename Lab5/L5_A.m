%% A 

x_1 = @(n) exp(j*2*pi*30/10 .* n) + exp(j*2*pi*33/10 .* n);
x_2 = @(n) cos(2*pi*30/100 .* n) + .5*cos(2*pi*40/100 .* n);

%% A1

N  = 10;
n = 0:N;

x1 = x_1(n);
x2 = x_2(n);

X1 = fft(x1);
X2 = fft(x2);

fr = -1/2:1/N:1/2;

subplot(2,1,1);
stem(fr, X1);

subplot(2,1,2);
stem(fr, X2);

%% A2

N = 500;
x1 = [x_1(n), zeros(1,N-10)];
x2 = [x_2(n), zeros(1,N-10)];

X1 = fft(x1);
X2 = fft(x2);

fr = -1/2:1/N:1/2;

subplot(2,1,1);
stem(fr, X1);

subplot(2,1,2);
stem(fr, X2);

%% A3

N = 100;
n = 0:N;
x1 = x_1(n);
x2 = x_2(n);

X1 = fft(x1);
X2 = fft(x2);

fr = -1/2:1/N:1/2;

subplot(2,1,1);
stem(fr, X1);

subplot(2,1,2);
stem(fr, X2);

%% A4

N = 500;
n = 0:100;
x1 = [x_1(n), zeros(1,N-100)];
x2 = [x_2(n), zeros(1,N-100)];

X1 = fft(x1);
X2 = fft(x2);

fr = -1/2:1/N:1/2;

subplot(2,1,1);
stem(fr, X1);

subplot(2,1,2);
stem(fr, X2);