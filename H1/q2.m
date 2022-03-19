clear, clc;
% Parse raw data to Matlab table
T = readtable("input.txt");
% % Create matrices for each column of the table
x = table2array(T(:,1)); % node 1
y = table2array(T(:,2)); % node 2
z = table2array(T(:,3)); % weight
% Create a undirected graph 
G = graph(x,y,z);
% Remove the duplicate and looping vertices
if ismultigraph(G)
    G = simplify(G);
end
%% PART A
% Calculate the Laplacian matrix inputting the graph
L = laplacian(G); % The matrix P
%RESULT

% Calculate the eigenvalues and eigenvectors
% The dataset is too big to make use of eig() function
% Therefore eigs is used to get the first two eigenvalues
tic
[V,D] = eigs(L,2);
toc
d = diag(D);
% the first two largest eigenvalues
e1 = d(1,:);
e2 = d(2,:);
%% Part B
s = scatter(V(:,1),V(:,2));
print -depsc s

%% Part C
sigma = 0.6;
sz = size(L);
szX = sz(:, 1);
% the identity matrix of the matrix L
I = eye(szX);
% The given statement
M1 = L + (sigma * I);
% RESULT
v1 = eig(M1); 
%% Part D
[V1, D1] = eigs(L, 10708);
% Find eigenvalues to calculate eigenvectors
D1 = D1^20;
d1 = diag(D1);
% Eigenvectors
X = [];





