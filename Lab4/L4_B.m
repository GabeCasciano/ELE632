u = @(n) 1*(n>=0); 
x_2 = @(n) sin((2*pi.*n)/10).*(u(n) - u(n-10));


n = 0:9;
ohm = -pi:(2*pi)/9:pi;

h = [ones(1,10)];

X_2 = fft(x_2(n));
H = fft(h);

Y = H .* X_2;

y = ifft(Y);

y_2 = conv(x_2(n), h);

Y_2 = fft(y_2);

% b1
% stem(n, x_2(n));
% stem(ohm, X_2);

%b2
% stem(n, h);
% stem(ohm, H);

%b3
% stem(Y);

%b4
% stem(y_2);

%b5
% stem(Y_2);

%b6
