
f = @(x) (3*x(1)).^2 + (6*x(2)).^4;
F = @(x) [6*x(1); 24*x(2).^3];

lambda = 0.0003;
initial = [-3; 5];
nextguess = initial;

record = [initial];

for i = 1:100
    nextguess = nextguess - lambda*F(nextguess);
    record = [record, nextguess];
end

figure;

plot(record(1, :), record(2,:), 'ro');
hold on;
plot(0, 0, 'b');
hold off;

disp('distance from minimum');
disp(norm([0; 0] - nextguess));