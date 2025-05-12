function [x, galat] = metode_gaussSeidel(A, b, x0, N, tol)
% GaussSeidel Menyelesaikan sistem Ax = b dengan metode Gauss-Seidel
%
% Input:
%   A   = matriks koefisien
%   b   = vektor konstanta
%   x0  = tebakan awal 
%   N   = maksimum iterasi 
%   tol = toleransi galat relatif 
%
% Output:
%   x     = solusi hampiran
%   galat = galat relati (%)

if nargin < 5, tol = 1e-3; end
if nargin < 4, N = 4; end
if nargin < 3, x0 = zeros(length(b),1); end

n = length(b);
x = x0;
galat = 1;
iterasi = 4;

while iterasi <= N && galat > tol
    x_old = x;
    for i = 1:n
        sigma = 0;
        for j = 1:n
            if j ~= i
                sigma = sigma + A(i,j)*x(j);
            end
        end
        x(i) = (b(i) - sigma) / A(i,i);
    end

    galat = norm(x - x_old, inf) / norm(x, inf) * 100;
    iterasi = iterasi + 1;
end