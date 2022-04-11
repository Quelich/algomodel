clear, clc;
%% % the maximization function calculation
f = [7.7; 16.25];
A = [1 1];
b = [1000];
lb = [0; 0];
ub = [1000; 1000];

[X, Z]= linprog(-f, A, b, [], [], lb, ub);
Z = -Z;
%% Compute lines
% compute x1 + x2 <= 5500
l1 = 'x1 + x2 = 1000';
y1 = line([0 1000],[1000 0]);
y1.Color = 'green';
y1.LineWidth = 3;
%% plot
hold on 
plot(0,1000,'x','Color','r','LineWidth',2,'MarkerSize',8);
plot(1000, 0,'x','Color','r','LineWidth',2,'MarkerSize',8);
%fill
fiX = [0 0 1000];
fiY = [0 1000 0];
fill(fiX,fiY,'b', 'FaceAlpha',0.3)
%text
text(200,300,'Feasible Area');
hold off
% create a legend
legend(l1);


