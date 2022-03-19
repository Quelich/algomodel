clear,clc;

% Dataset of randomly selected numbers
x = rand(1,100);
x = sort(x);

% Exponential Function
y= exp(x);
plot(x,y);
xlabel('x', 'FontSize', 20);
ylabel('exp(x)', 'FontSize', 20);
print -depsc exp

% Logarithmic Function
y= log(x);
plot(x,y);
xlabel('x', 'FontSize', 12);
ylabel('log(x)', 'FontSize', 12);
print -depsc log

% Sine Function
y= sin(x);
plot(x,y);
xlabel('x', 'FontSize', 12);
ylabel('sin(x)', 'FontSize', 12);
print -depsc sin

% Logarithmic Function  
y= cos(x);
plot(x,y);
xlabel('x', 'FontSize', 12);
ylabel('cos(x)', 'FontSize', 12);
print -depsc cos


