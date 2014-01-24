im1 = imread('lena.pgm');
im2 = imread('lenabruitee.pgm');
fourier1 = fftshift(fft2(double(im1)));
fourier2 = fftshift(fft2(double(im2)));
fourier1 = abs(fourier1);
%fourier2 = abs(fourier2);
%figure; imagesc(fourier1);
%figure; imagesc(fourier2);
MasqueStruct=load('masque.mat'); masque = MasqueStruct.F_m;
figure; imagesc(masque);
im = fourier2.*masque;
imbis = ifft2(ifftshift(im));
figure; imagesc(imbis);
colormap('gray');

