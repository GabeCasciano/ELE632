%% Section A
%Q1
%i)
delta = @(x) (1)*(x==0);
t = (-3.5:3.5);
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
t = (-1:(2*pi));
stem(t, x(t))
axis([-1 (2*pi) -1.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%iv)
x1 = @(n) x(n-3);
t = (-1:(2*pi)+3);
stem(t, x1(t))
axis([-1 (2*pi)+3 -1.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%v
x2 = @(n) x(-n);
t = (-(2*pi):1);
stem(t, x2(t))
axis([-(2*pi) 1 -1.5 1.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%Q2
%i)
t = (-10:70);
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
z = @(n) 5.*exp(-n/2).*(u(n) - u(n-10));
y3 = @(T) z(T/3);

t = (-10:0.1:70);
n = (-10:70);
%i)
subplot(3,1,1);
plot(t, z(t/3));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%ii)
subplot(3,1,2);
stem(n, y3(n));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

subplot(3,1,3);
stem(n, y2(n));
axis([-11 71 -6 0.5]);
grid on;
ylabel("Signal");
xlabel("Tine");

%% Section B
%1)
x = @(n) n;
y0 = 2000;
y = @(x, y1) (x + y1)*1.02;

yn = zeros(12);
yn(1) = y0;

for t = 2:13    
    yn(t) = y(x(100), yn(t-1));%100$ per month + 2
end

stem(yn);

%2)
yn = zeros(12);
yn(1) = y0;
for t = 2:13    
    yn(t) = y(x(0), yn(t-1));
end

stem(yn);

%3)
yn = zeros(12);
yn(1) = y0;
for t = 2:13    
    yn(t) = y(x(100*t), yn(t-1));
end

stem(yn);

%% Section C
%1)


%2)
xc = @(T) cos(pi*T/5) + delta(T - 20) - delta(T - 35);
t = (1:45);
yc_4 = MAX_FILTER(xc(t), 4);
yc_8 = MAX_FILTER(xc(t), 8);
yc_12 = MAX_FILTER(xc(t), 12);
subplot(2,2,1);
plot(t,xc(t));
subplot(2,2,2);
stem(yc_4);
subplot(2,2,3);
stem(yc_8);
subplot(2,2,4);
stem(yc_12);

%% Section D
%1)
t = (1:10);
POWER(t);
ENERGY(t);
%2)
x = @(n) -3*(u(n+3) - u(n-4)).*n;
t = (-4:5);
subplot(1,1,1)
stem(t,x(t));

POWER(x(t))
ENERGY(x(t))

%%MATLAB Functions
function [OUT] = MAX_FILTER(x,N)
    len = length(x);
    OUT = zeros(len);
    OUT = x;
    for t = 1:N:len
        largest = 0;
        for n = t:t+N%find the largest value for every n points
            if n < len && x(n) > largest
                largest = x(n);
            end
        end
        if n < len
            OUT(t:t+N) = largest;%set the largest value across the range of t-N:t
        else
            OUT(t:len) = largest;
        end
    end
    
end 

function [p] = POWER(x)
   len = length(x);
   hold = zeros(len);
   hold = abs(x).^2;
   p = (1/(2*len))*sum(hold);
end

function [e] = ENERGY(x)
   len = length(x);
   hold = zeros(len);
   hold = abs(x).^2;
   e = sum(hold);
end