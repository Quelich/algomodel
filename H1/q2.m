clear, clc;

% Question-2
% a)
input = readmatrix("input.txt");
A = spconvert(input);
d = sum(A,2);
I = eye(size(A));
L = diag(d) - A;
Dhalf = diag(sparse(1./sqrt(d)));
P = Dhalf*(L*Dhalf);
tic
[V,D] = eigs(P,2);
toc
% b)
x = size(P,1);
space = 1:1:x;
figure
scatter(space,V(:,1),'or');
hold on;
scatter(space,V(:,2),'blue');





