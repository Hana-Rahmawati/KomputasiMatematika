

while true
    % Input angka
    angka = input('Masukkan sebuah angka: ');

    % Menentukan apakah angka tersebut positif, negatif, atau nol
    if angka > 0
        if angka > 200
            disp(['Angka ', num2str(angka), ' adalah positif dan lebih dari 200']);
        else
            disp(['Angka ', num2str(angka), ' adalah positif dan kurang dari 200']);
        end
    elseif angka < 0
        disp(['Angka ', num2str(angka), ' adalah negatif']);
    else
        disp('Angka tersebut adalah nol.');
        break; 
    end
end