%Section A
%Q1
%i)
delta = @(x) (1)*(x==0);
t = (-3.5:1:3.5);
stem(t, delta(t-3))
axis([-4 4 -.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%ii)
step = @(x) (1)*(x>0);
stem(t, step(t+1))
axis([-4 4 -.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%iii)
x = @(n) cos(n*pi/5).*step(n);
t = (-1:1:(2*pi));
stem(t, x(t))
axis([-1 (2*pi) -1.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%iv)
x1 = @(n) x(n-3);
t = (-1:1:(2*pi)+3);
stem(t, x1(t))
axis([-1 (2*pi)+3 -1.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%v
x2 = @(n) x(-n);
t = (-(2*pi):1:1);
stem(t, x2(t))
axis([-(2*pi) 1 -1.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%Q2
%i)
t = (-10:1:70);
u = @(n) 1*(n<0);
y = @(n) 5.*exp(-n/2).*(u(n) - u(n-10));
stem(t, y(t));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");

%ii)
y1 = @(n) y(3*n);
stem(t, y1(t));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%iii)
y2 = @(n) y(n/3);
stem(t, y2(t));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%Q3
t = (-10:0.1:70);
n = (-10:1:70);
subplot(2,1,1);
plot(t, y2(t));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

subplot(2,1,2);
stem(n, y2(n));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

