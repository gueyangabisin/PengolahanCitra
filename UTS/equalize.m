pkg load image;

img = imread('D:\rizalDisini\pengolahan citra\gambar\thor.jpeg');
gray = rgb2gray(img);

% Ekualisasi histogram
equalized = histeq(gray);

% Tampilkan perbandingan
subplot(2,2,1); imshow(gray); title('Citra Asli');
subplot(2,2,2); imshow(equalized); title('Setelah Ekualisasi');
subplot(2,2,3); imhist(gray); title('Histogram asli');
subplot(2,2,4); imhist(equalized); title('Histogram Setelah');

