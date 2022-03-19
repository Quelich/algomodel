clear,clc;

% Dataset of randomly selected numbers
x = rand(1,100);
x = sort(x);

% Exponential Function
y= exp(x);
plot(x,y);
xlabel('x', 'FontSize', 30);
ylabel('exp(x)', 'FontSize', 30);
print -depsc exp

% Logarithmic Function
y= log(x);
plot(x,y);
xlabel('x', 'FontSize', 30);
ylabel('log(x)', 'FontSize', 30);
print -depsc log

% Sine Function
y= sin(x);
plot(x,y);
xlabel('x', 'FontSize', 30);
ylabel('sin(x)', 'FontSize', 30);
print -depsc sin

% Logarithmic Function  
y= cos(x);
plot(x,y);
xlabel('x', 'FontSize', 30);
ylabel('cos(x)', 'FontSize', 30);
print -depsc cos


