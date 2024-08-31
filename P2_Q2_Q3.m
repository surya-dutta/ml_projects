% PART 2 - Question 2
clc;clear;close;
% Initialize
N = 1000;
% Take Gaussian iid distribution for x and y
x = normrnd(1,1,1,N) ;
y = normrnd(1,1,1,N) ;
% Input covariance matrix
Cu = [11/144 -1/96 ; -1/96 73/960] ;
% Perform Cholesky decomposition
A = chol(Cu,'lower');
Xs = [x' y']';
V = A*Xs;
% Output covariance matrix
Cv = cov(V');
disp(Cv)