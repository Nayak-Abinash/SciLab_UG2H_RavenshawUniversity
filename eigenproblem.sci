//Q: Calculate the eigenvalues and eigenvectors of a given matrix.

clc;
A=[2,1,1;1,3,2;3,1,4];
[a1,a2]=spec(A);
disp("The Eigen-values of A are:",spec(A));
disp("The corresponding Eigen-vectors are:",a1);
