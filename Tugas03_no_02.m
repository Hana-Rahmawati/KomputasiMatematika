%METODE RIEMANN DAN TRAPESIUM

% Input
a = 0;          % batas bawah
b = 1;          % batas atas
h = 0.1;        % lebar langkah
n = (b - a)/h;  % jumlah segmen

% Titik-titik x dan f(x)
x = a:h:b;
fx = 2 * x.^3;

% Aturan Trapesium 
trapesium = fx(1) + fx(end) + 2*sum(fx(2:end-1));
hasil_trapesium = h/2 * trapesium;

% Riemann Kiri
x_kiri = x(1:end-1);
fx_kiri = 2 * x_kiri.^3;
riemann_kiri = h * sum(fx_kiri);

% Riemann Kanan
x_kanan = x(2:end);
fx_kanan = 2 * x_kanan.^3;
riemann_kanan = h * sum(fx_kanan);

% Riemann Tengah
x_tengah = a + h/2 : h : b - h/2;
fx_tengah = 2 * x_tengah.^3;
riemann_tengah = h * sum(fx_tengah);

% Nilai Eksak (analitik)
hasil_eksak = (1/2) * 1^4 - (1/2) * 0^4;

% Menampilkan hasil 
fprintf(' Metode Trapesium   :%.3f\n ', hasil_trapesium);
fprintf('Riemann Kiri       :%.3f\n ', riemann_kiri);
fprintf('Riemann Kanan      :%.3f\n ', riemann_kanan);
fprintf('Riemann Tengah     :%.3f\n ', riemann_tengah);
fprintf('Hasil Eksak        :%.3f\n ', hasil_eksak);


