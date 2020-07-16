No = 7;
x1 = [6 5 4 3 2 1 0];
x2 = [0 0 1 0 0 0 0];

OHM = (2*pi)/No;
n = 0:No-1;

for r = 0:No-1
    X1(r+1) = sum(x1.*exp(-j*r*(OHM)*n))/No;
    X2(r+1) = sum(x2.*exp(-j*r*(OHM)*n))/No;
end

Y = X1 .* X2;