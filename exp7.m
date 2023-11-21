clc;
close all;
clear all;
% For Grayscale Image
bw = imread('cameraman.tif');
figure(1);
subplot(4,3,1);
imshow(bw);
title('Original Image');
%Defining Structure Element
se = strel('square',3);
%Dilation
bw2 = imdilate(bw,se);
subplot(4,3,2);
imshow(bw2);
title('Dilated');
%Erosion
bw3 = imerode(bw,se);
subplot(4,3,3);
imshow(bw3);
title('Eroded');
%Opening
bw4 = imopen(bw,se);
subplot(4,3,4);
imshow(bw4);
title('Opened');
%Closing
bw5 = imclose(bw,se);
subplot(4,3,5);
imshow(bw5);
title('Closed');
%Edge Extraction
bw6=bw-bw3;
subplot(4,3,6);
imshow(bw6);
title('Edge Extraction');
% For Binary Image
bw = imread('text.png');
figure(1);
subplot(4,3,7);
imshow(bw);
title('Original Image');
%Defining Structure Element
se = strel('square',3);
%Dilation
bw2 = imdilate(bw,se);
subplot(4,3,8);
imshow(bw2);
title('Dilated');
%Erosion
bw3 = imerode(bw,se);
subplot(4,3,9);
imshow(bw3);
title('Eroded');
%Opening
bw4 = imopen(bw,se);
subplot(4,3,10);
imshow(bw4);
title('Opened');
%Closing
bw5 = imclose(bw,se);
subplot(4,3,11);
imshow(bw5);
title('Closed');
%Edge Extraction
bw6=bw-bw3;
subplot(4,3,12);
imshow(bw6);
title('Edge Extraction');