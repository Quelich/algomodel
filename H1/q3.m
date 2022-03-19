clear, clc;

% Parse raw data to Matlab table
T = readtable("input.txt");
% % Create matrices for each column of the table
x = table2array(T(:,1)); % node 1
y = table2array(T(:,2)); % node 2
z = table2array(T(:,3)); % weight

I = eye(10708);
G = graph(x,y,z);
A = G.adjacency;
D = diag(sum(A)); % degree matrix

L = I - 0.85 * D^-1/2*A*D^-1/2; % laplacian matrix

b = zeros(10708,1);

for i=1:10
 b(i) = 1/10;
end
tic
x = L^-1 * b;
toc

