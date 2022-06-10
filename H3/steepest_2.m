f = @ (x)(x(1) - 5).^2 + (x(2) + 1).^2;

gradf = @ (x) [2.*(x(1) - 5); 2.*(x(2)+1)];

iterNumber = 100;

initial = [5; 0];
stepsize = 0.1;

nextguess = initial;

record = [initial];

for i = 1:iterNumber
    nextguess = nextguess - stepsize*gradf(nextguess);
    record = [record, nextguess];
end

figure;

plot(record(1, :), record(2,:), 'ro');
hold on;
plot(5, -1, 'b');
hold off;

disp('distance from minimum');
disp(norm([5; -1] - nextguess));