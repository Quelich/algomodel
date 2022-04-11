x = linspace(1,10);
y = x;
% Now declare a constant array Z
% with one element for each element of x.
Z = ones(1, length(x));
plot(x, y, 'b', 'LineWidth', 2); 
hold on
plot(x, Z, 'r', 'LineWidth', 2)
grid on;