clear, clc;

f = [200; 175];
A = [1 1; 5 2];
b = [5500; 48000];
lb = [0; 0];
ub = [5000; 2000];

% -f for max f(x)
[X, Z]= linprog(-f, A, b, [], [], lb, ub);
Z = -Z;


x = linspace(0,8000);
O = ones(1, length(x));
y2 = 5500 - x;
hold on 
plot(x, y2, 'r');

grid on;
plot(0,Z, 'b', 'LineWidth',2);





