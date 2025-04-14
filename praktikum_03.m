clc
clear

%if...end
% n = input('nilai : ');
% if n > 70
%     disp('anda lulus');
% end
% disp('coba lagi');

%if else
% n = input('nilai : ');
% if n > 70
%     disp('anda lulus');
% else
%     disp('coba lagi');
% end

%if...elseif...elseif...end
% n = input('tinggi : ');
% if n >= 190
%     disp('sangat tinggi');
% elseif n > 160 && n < 190
%     disp('cukup tinggi');
% elseif n < 160
%     disp('pendek');
% else 
%     disp('mini');
% end

%nested if (kondisi dalam kondisi) TUGAS
%switch
% hitungan = input('operasi : ');
% a = 2;
% b = 3;
% switch hitungan
%     case 1
%         y = a+b
%     case 2
%         y = a-b
%     case 3 
%         y = a*b
%     otherwise
%         disp('bukan pilihan');
% end

%loop (situasi dimana kita perlu mengeksekusi sebuah blok kode beberapa kali dieksekusi secara berurutan)
% for while
%for_i
% for i = 1:10;
%     disp(i);
% end
a = 0;
% for i = 1:5
%     a = a+i;
% end
% disp(a)

%continue
a = 0;
for i = 1:5
    if i == 2
        continue
    else 
        a = a+i;
    end
end
disp(a)

%Tugas buat contoh nested dan while(looping)