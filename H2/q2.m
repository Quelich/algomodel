f = [0; 0];
A = [1 1];
b = [12];
lb = [0; 0];
ub = [3; 9];

[X, Z]= linprog(-f, A, b, [], [], lb, ub);
Z = -Z;