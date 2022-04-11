clear, clc;
%% % the maximization function calculation
f = [200; 175];
A = [1 1; 5 2];
b = [5500; 48000];
lb = [0; 0];
ub = [5000; 2000];

[X, Z]= linprog(-f, A, b, [], [], lb, ub);
Z = -Z;
%% Compute lines
% compute x1 + x2 <= 5500

% p1(x1,y1) p2(x2, y2) line([x1 x2],[y1 y2])
y1 = line([0 5500],[5500 0]);
y1.Color = 'red';
y1.LineWidth = 2;
% compute x1 <= 5000

y2 = line([0 8000],[2000 2000]);
y2.Color = 'green';
y2.LineWidth = 2;
% compute x2 <= 2000

y3 = line([5000 5000], [0 8000]);
y3.Color = 'blue';
y3.LineWidth = 2;
%% plot
hold on 
plot(0,2000,'x','Color','r','LineWidth',2,'MarkerSize',8);
plot(3500,2000,'x','Color','r','LineWidth',2,'MarkerSize',8);
plot(5000,500,'x','Color','r','LineWidth',2,'MarkerSize',8);
plot(5000,0,'x','Color','r','LineWidth',2,'MarkerSize',8);
%fill
fiX = [0 0 3500 5000 5000];
fiY = [0 2000 2000 500 0];
fill(fiX,fiY,'g', 'FaceAlpha',0.3)
%text
text(2000,1000,'Feasible Area');

hold off
% create a legend
l1 = 'x1+ x2 = 5500';
l2 = 'x1 = 5000';
l3 = 'x2 = 2000';
legend(l1,l2,l3);



