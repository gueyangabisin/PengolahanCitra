pkg load image;
img = imread('D:\rizalDisini\pengolahan citra\gambar\gelap.jpg');
rgb = img + 50;
figure;
subplot(2,2,1); imshow (img); title('citra asli');
subplot(2,2,3); imshow (rgb); title('kecerahan ditingkatkan');
subplot(2,2,2); imhist (img); title('citra asli');
subplot(2,2,4); imhist (rgb); title('kecerahan ditingkatkan');


