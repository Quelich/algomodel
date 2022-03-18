clear, clc;
% Parse raw data to Matlab table
T = readtable("input.txt");
% % Create matrices for each column of the table
x = table2array(T(:,1));
y = table2array(T(:,2));
z = table2array(T(:,3));
% Create a undirected graph 
G = graph(x,y,z);
% Remove the duplicate and looping vertices
if ismultigraph(G)
    G = simplify(G);
end
%% PART A
% Calculate the Laplacian matrix by the graph
L = laplacian(G);
%RESULT
tic
% Calculate the eigenvalues and eigenvectors
[V,D] = eigs(L);
% the first two eigenvectors
d = D(:, [1,2]);
% the first two eigenvalues
v = eigs(L,2);
scatter(D(:,1),D(:,2))
toc
%%TODO scatter(D(:,1),D(:,2));
%% Part B
% sigma = 0.6;
% sz = size(L);
% szX = sz(:, 1);
% % the laplacian matrix is a square matrix
% I = eye(szX);
% M1 = L + (sigma * I);
% % RESULT
% v1 = eig(M1); 
% %% PART C
% tic 
% % L1 = L^20;
% toe


