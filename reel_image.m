img1 = imread('street.pgm');
img2 = imread('desert.pgm');
img3 = imread('mountain.pgm');
fourier1 = fftshift(fft2(double(img1)));
fourier2 = fftshift(fft2(double(img2)));
fourier3 = fftshift(fft2(double(img3)));

fourier1 = log(1+abs(fourier1));
fourier2 = log(1+abs(fourier2));
fourier3 = log(1+abs(fourier3));

%figure; imagesc(fourier1);
%figure; imagesc(fourier2);
figure; imagesc(fourier3);

contourf(fourier3, 10);
colorbar;
%contour3(fourier3, 100);
