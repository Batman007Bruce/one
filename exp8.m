I = imread('cameraman.tif');
figure(1);
subplot(2,2,1);
imshow(I);
title('Original Image');
% Manual Thresholding (User Defined Algorithm)
[R C]= size(I);
J = zeros(R,C);
J = uint8(J);
th=100;
%for x=1:R
 %for y=1:C
 %if I(x,y)>=th
 %J(x,y)=255;
 %end
 %end
%end
J = logical(J);
subplot(2,2,2);
imshow(J);
title('Manual Thresholding');
% Manual Thresholding (by Function)
th=100;
K = im2bw(I,th/255);
subplot(2,2,3);
imshow(K);
title('Manual Thresholding (by function)');
% Automated Thresholding by Otsu's Method
th = graythresh(I); % Finding threshold by Otsu's Method
L = im2bw(I,th);
subplot(2,2,4);
imshow(L);
title('Automated Thresholding');