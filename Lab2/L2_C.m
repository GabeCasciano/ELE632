a = [1, -3/10, -1/10];
b = 2;

n = 0:15;

u = @(n) 1*(n>=0);
x = @(n) 2.*cos((2*pi.*n)/6).*(u(n) - u(n-10));

y_z = filter(b, a, x(n));

stem(n, y_z);
