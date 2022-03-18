clear,clc;

x = rand(1,100);
x = sort(x);
y= exp(x);
plot(x,y);
xlabel('x', 'FontSize', 12);
ylabel('exp(x)', 'FontSize', 12);
print -depsc exp

% x = rand(1,100);
% x = sort(x);
% y= log(x);
% plot(x,y);
% xlabel('x', 'FontSize', 12);
% ylabel('log(x)', 'FontSize', 12);
% print -depsc log

% x = rand(1,100);
% x = sort(x);
% y = sin(x);
% plot(x,y);
% xlabel('x', 'FontSize', 12);
% ylabel('sin(x)', 'FontSize', 12);
% print -depsc sin

% x = rand(1,100);
% x = sort(x);
% y= cos(x);
% plot(x,y);
% xlabel('x', 'FontSize', 12);
% ylabel('cos(x)', 'FontSize', 12);
% print -depsc cos


