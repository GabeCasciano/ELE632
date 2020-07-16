%% D1
a = [1, -3/10, -1/10];
b = 2;
inc = [1, 2];

n = 0:15;

u = @(n) 1*(n>=0);
x = @(n) 2.*cos((2*pi.*n)/6).*(u(n) - u(n-10));

z = filtic(b, a, inc);
y_t = filter(b, a, x(n), inc);

stem(n, y_t);

%% D2
