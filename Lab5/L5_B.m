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