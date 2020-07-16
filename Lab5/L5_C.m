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