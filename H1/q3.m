clear, clc;

s = [11 32 45 3 6 7 43 34 765 21 58 36 710 482 56];
t = [78 31 67 28 83 26 17 85 25 90 68 59 29 19 69];
G = graph(s, t);

A = adjacency(G);
D = degree(G);
I = eye(765);

L = I - 0.85 .* D.^-1/2 .* A .* D.^-1/2; % laplacian matrix

b = zeros(765, 1);
for i=1:10
 b(i) = 1/10;
end
tic
X = L^-1 * b;
toc




