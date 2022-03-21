clear, clc;

%% PART D
% we will use this problem as a part of dynamic linear models. That is, we
% F1 and F2
tic
A = [1 1; 1 0];
% V = eigenvectors of A, D = eigenvalues in the diagonal matrix of A
[V,D] = eig(A); 
d = diag(D);
% eigenvalues
lambda_1 = d(2,:);
lambda_2 = d(1,:);
% eigenvectors
v_1 = [d(2,:);1]; 
v_2 = [d(1,:);1]; 

% S is composed of eigenvectors
S = [v_1 v_2];

% eigenvalues on the main diagonal
big_lambda = [v_1(1,:) 0; 0 v_2(1,:)];

% initial state vector
u0 = [1;1];

% By this, we will be able to find consecutive Fibonacci numbers
c = S^-1*u0;
result = S * big_lambda^998 * c; 
toc
%It is 998 since we initialized the first values

%% PART C

% tic
% i = 1000;
% 
% result = matrixVectorProduct(i);
% toc
% 
% function x = matrixVectorProduct(a)
% u0 = [0 1; 1 1];
% x = u0^a * [0; 1];
% x = x(1,:);
% end

%% PART B
% Using Binet's Formula
% n = 1000;
% result =  ((1+sqrt(5)^n) - (1-sqrt(5)^n)) / (2^n*sqrt(5));
%% PART A

% tic
% dummy = fib(10);
% toc
% 
% function x = fib(n)
%     if n==1 || n==2
%          x = 1;
%     else
%         x = fib(n-1)+fib(n-2);
%     end
% end


