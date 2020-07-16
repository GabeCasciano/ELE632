a = [1, -3/10, -1/10];
b = 2;
inc = [1, 2];

n = 0:10;

z = filtic(b, a, inc);
y_0 = filter(b, a, zeros(size(n)), z);

stem(n, y_0);
