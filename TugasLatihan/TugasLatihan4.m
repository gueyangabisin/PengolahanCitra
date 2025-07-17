pkg load image;  % Untuk manipulasi citra
img = imread('D:\rizalDisini\Octave Gnu\img\dokumen.jpg');
imshow(img);
title('Dokumen Miring');
src_points = [120 90;  400 70;  420 350; 100 370];  % x,y dari dokumen di gambar
dst_points = [0 0; 300 0; 300 400; 0 400];
T = cp2tform(src_points, dst_points, 'projective');
corrected_img = imtransform(img, T, 'XYScale', 1);
##imshow(corrected_img);
##title('Dokumen Setelah Koreksi Perspektif');

subplot(1,2,1),imshow(corrected_img),title 'seteah dikoreksi';
subplot(1,2,2),imshow(img), title 'sebelum dikoreksi';
