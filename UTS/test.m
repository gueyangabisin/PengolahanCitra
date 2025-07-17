clc;
berkas ='D:\rizalDisini\pengolahan citra\gambar\keyb.jpeg';

function i = perbesar(berkas, sy, sx)
% PERBESAR Melakukan operasi pembesaran citra.
% Masukan: berkas = nama berkas image
% sy : skala pembesaran pada sumbu Y
% sx : skala pembesaran pada sumbu X
%
% Versi 1
F = imread(berkas);
[tinggi, lebar] = size(F);
tinggi_baru = tinggi * sy;
lebar_baru = lebar * sx;
F2 = double(F);
for y=1 : tinggi_baru
y2 = ((y-1) / sy) + 1;

for x=1 : lebar_baru
x2 = ((x-1) / sx) + 1;
i(y, x) = F(floor(y2), floor(x2));
end
end
i = uint8(i);
end
%%memanggil fungsi
i = perbesar(berkas, 10, 5);
figure;
imshow(i);
