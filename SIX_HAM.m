clc
clear

%LATIHAN MEMBUAT GRAFIK
x = [-10:1:10]
y = x.^2;
plot(x,y)

% x = 0:pi/100:2*pi;
% y = sin(x);
% plot(x,y)

% x = linspace(-2*pi,2*pi);
% y1 = sin(x);
% y2 = cos(x);
% 
% figure
% plot(x,y1,x,y2)

%EQUAL MAXIMA
% x = [0:0.001:1]
% y = (sin(5*pi*x)).^6
% plot(x,y, '^m')

%DECREASING
% x = [0:0.001:1]
% y = exp(-2*log(2)*((x-0.1)/0.8).^2).*(sin(5*pi*x)).^6;
% plot(x,y, 'hexagramc')

%SIX HAM
x = -1.9:0.1:1.9;
y = -1.1:0.1:1.1;
[X,Y] = meshgrid(x,y);
f = (4-2*X.^2+X.^4/3).*X.^2+X.*Y+4*(-1+Y.^2).*Y.^2;
figure(1)
plot3(X,Y, f)

figure(2)
contour(X, Y, f)

figure(3)
contour3(X, Y, f)

figure(4)
surf(X, Y, f)

figure(5)
surfc(X, Y, f)

figure(6)
meshc(X, Y, f)


