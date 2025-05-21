% KURVA KUPU-KUPU PARAMETRIK
t = linspace(0, 12*pi, 1000);
x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
z = sin(t/3);
figure(1);
plot3(x, y, z, 'm', 'LineWidth', 1.5);
grid on; axis equal;


% PERMUKAAN SPIRAL
theta = linspace(0, 4*pi, 100);
r = linspace(0.5, 2, 100);
[Theta, R] = meshgrid(theta, r);
X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = R;
figure(2);
mesh(X, Y, Z)
colormap(winter)


% FLOWER MESH DOME
theta = linspace(0, 2*pi, 100);
phi = linspace(0, pi/2, 50);
[Theta, Phi] = meshgrid(theta, phi);
R = 1 + 0.3*cos(6*Theta);
X = R .* sin(Phi) .* cos(Theta);
Y = R .* sin(Phi) .* sin(Theta);
Z = R .* cos(Phi);
figure(3);
mesh(X, Y, Z)
colormap(jet)
axis equal


% LATTICE SHELL
[u, v] = meshgrid(linspace(0, pi, 60), linspace(0, 2*pi, 60));
r = 1 + 0.2*sin(10*v + 3*u);
x = r .* sin(u) .* cos(v);
y = r .* sin(u) .* sin(v);
z = r .* cos(u);
figure(4);
mesh(x, y, z)
colormap(cool)
axis equal


% WAVY STAR DISC
[x, y] = meshgrid(-3:0.05:3);
r = sqrt(x.^2 + y.^2);
theta = atan2(y, x);
z = cos(5*theta) .* exp(-r.^2);
colormap(winter)
axis equal
figure(5);
contourf(x, y, z, 50)


% GELOMBANG PAPAN SELANCAR
[x, y] = meshgrid(-10:0.2:10, -10:0.2:10);
z = sin(x) + cos(y);
figure(6);
surf(x, y, z);
shading interp; colormap cool;
xlabel('X'); ylabel('Y'); zlabel('Z');


% COSMIC FUNNEL GRID
theta = linspace(0, 6*pi, 100);
r = linspace(0.2, 2, 100);
[Theta, R] = meshgrid(theta, r);
X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = log(R) .* sin(3*Theta);
figure(7);
mesh(X, Y, Z)
colormap(summer)
axis equal


% SPIRAL CONE FLOW
theta = linspace(0, 6*pi, 200);
r = linspace(0.1, 3, 200);
[Theta, R] = meshgrid(theta, r);
X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = R .* log(R + 1) .* sin(2*Theta);
figure(8);
mesh(X, Y, Z)
colormap(autumn)
axis equal


% LOG SPIRAL RIDGE
theta = linspace(0, 4*pi, 300);
r = exp(0.1 * theta);
[Theta, R] = meshgrid(theta, r);
X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = sin(R);
figure(9);
surf(X, Y, Z)
shading interp
colormap(cool)
axis equal


% TWISTED GALAXY SURFACE
theta = linspace(0, 8*pi, 250);
r = linspace(0.5, 2.5, 250);
[Theta, R] = meshgrid(theta, r);
X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = R .* sin(Theta/2) .* cos(3*R);
figure(10);
mesh(X, Y, Z)
colormap(pink)
axis equal


% % FRACTAL RIPPLE SPIRAL 
theta = linspace(0, 10*pi, 400);
r = linspace(0.1, 3, 400);
[Theta, R] = meshgrid(theta, r);
X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = sin(5*log(R + 1)) .* cos(Theta);
figure(11);
surf(X, Y, Z)
colormap(cool)
shading interp
axis equal


% %DIMENSIONAL WARP GRID
theta = linspace(0, 6*pi, 200);
r = linspace(0.5, 2, 200);
[Theta, R] = meshgrid(theta, r);
X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = atan(R .* sin(Theta)) + cos(3*Theta);
figure(12);
mesh(X, Y, Z)
colormap(cool)
axis equal


% BUNGA TERATAI
theta = linspace(0, 2*pi, 1000);
r = abs(sin(3*theta) .* cos(2*theta)).^0.8;  % kelopak tumpul
x = r .* cos(theta);
y = r .* sin(theta);
figure(13);
plot(x, y, 'g', 'LineWidth', 2);
axis equal;
grid on;


% BINTANG LAUT PARAMETRIK
theta = linspace(0, 2*pi, 1000);
r = 1 + 0.5*sin(5*theta);  % 5 lengan
x = r .* cos(theta);
y = r .* sin(theta);
figure(14);
plot(x, y, 'r', 'LineWidth', 2);
axis equal;
grid on;


% DAUN SEMANGGI TIGA DAUN
theta = linspace(0, 2*pi, 1000);
r = sin(3*theta);  % 3 kelopak hati
x = r .* cos(theta);
y = r .* sin(theta);
figure(15);
plot(x, y, 'g', 'LineWidth', 2);
axis equal;
grid on;


% PERMUKAAN LOGO BERGELOMBANG ASIMETRIS
x = -3:0.1:3;
y = -3:0.1:3;
[X, Y] = meshgrid(x, y);
Z = sin(X) + cos(Y) + 0.3*X.*Y;
figure(16);
mesh(X, Y, Z);
colormap(spring);



