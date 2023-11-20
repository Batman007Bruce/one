clc;
I = imread('C:\Program Files\MATLAB\R2018a\toolbox\images\imdata\flamingos.jpg');
figure(1);
subplot(2,2,1);
imshow(I);
title('Original Image');	
J=0.3.*I(:,:,1)+0.59.*I(:,:,2)+0.11.*I(:,:,3);
subplot(2,2,2);
imshow(J);
title('Grayscale Image by Formula');
K=rgb2gray(I);
subplot(2,2,3);
imshow(K);
title('Grayscale Image by rgb2gray function');
L=im2bw(K);
subplot(2,2,4);
imshow(L);
title('Binary Image');