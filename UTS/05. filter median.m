pkg load image;
%filter median
F = imread('E:\coolyeah\pengolahan citra\gambar\noise.jpg');
if size(F, 3) == 3
    F = rgb2gray(F);
end
filtered_image = medfilt2(F, [3 3]);

% Filter pemerataan
kernel = ones(3, 3) / 9;
filtered_image = imfilter(F, kernel, 'symmetric');

figure;
subplot(1,3,1);imshow(F); title('Citra asli');
subplot(1,3,2); imshow(uint8(filtered_image)); title('Filter Rata rata');
subplot(1,3,3); imshow(filtered_image); title('Filter Median');

