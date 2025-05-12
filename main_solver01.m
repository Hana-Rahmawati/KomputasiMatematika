A = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
b = [6; 25; -11; 15];
x0 = zeros(4,1);
tol = 1e-3;
N = 100;

[x_jacobi, galat_jacobi] = metode_jacobi(A, b, x0, N, tol);
disp('Hasil metode jacobi');
disp(x_jacobi);
[x_gauss, galat_gauss] = metode_gaussSeidel(A, b, x0, N, tol);
disp('Hasil metode Gauss Seidel');
disp(x_gauss);