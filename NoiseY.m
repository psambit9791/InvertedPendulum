% PCA via SVD, for zero-mean NxD matrix X
K = 1;
X = [1 2 3; 4 5 6; 7 8 9]
[U, S, V] = svd(X, 0)
U = U(:, 1:K); % NxK "datapoints" projected into K-dims
S = S(1:K, 1:K);
V = V(:, 1:K); % DxK "features" projected into K-dims
U, S, V
X*V
X_kdim = U*S;
X_proj = U*S*V'