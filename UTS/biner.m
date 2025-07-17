pkg load image;

img = imread('D:\cp\citra\foto\part.jpeg');

% Ubah ke grayscale terlebih dahulu
gray_img = rgb2gray(img);

[tinggi, lebar] = size(gray_img);
ambang = 100; % threshold

biner = zeros(tinggi, lebar);

for baris = 1:tinggi
    for kolom = 1:lebar
        if gray_img(baris, kolom) >= ambang
            biner(baris, kolom) = 1;
        else
            biner(baris, kolom) = 0;
        end
    end
end

subplot (1,2,1); imshow(biner); title ('Citra Biner');
subplot (1,2,2); imshow (img); title ('Citra RGB');

