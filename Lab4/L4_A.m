u = @(n) 1*(n>=0); 
x_1 = @(n) ((-1/7).*n + 1).*(n<=7) .* u(n);
n = 0:128;
ohm = -pi:(2*pi)/128:pi;

X_1 = fft(x_1(n));

% stem(n, x_1(n));
% stem(ohm,X_1);

grid on;
