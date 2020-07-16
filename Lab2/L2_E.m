%% E1
a = [1, -3/10, -1/10];
b = 2;
inc = [1, 2];

n = 0:15;
n_con = 0:30;

z = filtic(b, a, inc);
y_0 = filter(b, a, zeros(size(n)), z);

u = @(n) 1*(n>=0);
x = @(n) 2.*cos((2*pi.*n)/6).*(u(n) - u(n-10));

y_z = filter(b, a, x(n));

y_t = conv(y_0, y_z);

stem(n_con, y_t);
%% E2

%% E3
