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

%% B

T0 = 1 % duration
T = 1 % sampling
N0 = T0/T; % numbers of samples

%% B1
load chirp.mat
filename = 'chirp.wav';
audiowrite(filename, y, Fs);
clear y Fs;

[y, Fs] = audioread('chirp.wav');

T = 1/Fs;
N0 = length(Fs);
T0 = N0 * T;

%% B2

subplot(1,1,1);
stem(y);

%% B3

Y = fft(y);

%% B4

n = 1:2:T0;
T = 1/(Fs/2);
N0 = length(y)/2;
T0 = No * T;

y1 = y(n);

%% B5

stem(y1);

%% B6

Y1 = fft(y1);

%% B7

%% B8

%% C

load chirp.mat
filename = 'chirp.wav';
audiowrite(filename, y, Fs);
clear y Fs;

[y, Fs] = audioread('chirp.wav');

T = 1/Fs;
N0 = length(Fs);
T0 = N0 * T;

Y = fft(y);

%% C1 

u = @(n) (n>=1);
F1 = @(n) u(n) - u(n-2000);

w = 0:T0;

X1 = F1(w) .* Y;

%% C2

%% C3

F2 = @(n) 1 - (u(n-16) - u(n-256));

X2 = F2(w) .* Y;

%% C4

F3 = @(n) 1 - (u(n-16) - u(n-256));

X3 = F3(w) .* Y;

%% C5