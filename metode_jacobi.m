function [x, galat] = metode_jacobi(A, b, x0, N, tol)

%input
% A = matriks koefisien
% b = vektor konstanta
% x0 = tevakan awak
% N = maksimum iterasi
% tol = toleransi keakuratan (default 1e-3)

%output
% x = solusi hampiran
% galat = galat relatif (%)

if nargin < 5, tol = 1e-3; end
if nargin < 4, N = 4; end
if nargin < 3, x0 = zeros(length(b),1); end

n = length(b);
x = x0;
xnew = zeros(n, 1);
galat = 1;
iterasi = 4;

while iterasi <= N && galat > tol
    xold = x;
    for i = 1:n
        sigma = 0;
        for j = 1:n
            if j ~= i
                sigma = sigma + A(i,j)*x(j);
            end
        end
        xnew(i) = (b(i)- sigma)/A(i,i);
    end
    galat = norm(xnew - x, inf)/norm(xnew, inf)*100;
    x = xnew;
    iterasi = iterasi + 1;
end

