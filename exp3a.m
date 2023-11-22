% programs to have phase revrsal using 2D DFT
clc
clear
close all
% Generating input images
A = imread('cameraman.tif');
B = imread('trailer.jpg');
 
% find fourier transfrom of these images
A1 = fft2(double(A)); % it compute first foueir trasfrom of first image
B1 = fft2(double(B));
% get the magnitude and phase of images
mag_a = abs(A1); %abs give magnitude here
ph_a = angle(A1); % phase give us angle
mag_b = abs(A1); %abs give magnitude here
ph_b = angle(A1);
 
% Dermination of interchnage of phase value 
 
newfft_a = mag_a.*(exp(1i*ph_b))
newfft_b = mag_b.*(exp(1i*ph_a))
 
% reconstruction of the image using Inverse tranformation
R_a = ifft2(newfft_a);
R_b = ifft2(newfft_b);





clc;
clear;
close all;
% define A = Input grayscale image of A 4 * 4
A = [1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1];
 
% Assigning K = Trasnformation matrix of DFT of order 4
N = 4;
k = dftmtx(N);
 
% compute R1 = 2D DFT of gray scale image A
R1 = k*A*k';
 
% Another way of computing 2D DFT
R2 = fft2(A);


