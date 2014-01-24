img1 = zeros(30);
img1(:, 1:6) = 255;
img1(:, 13:18) = 255;
img1(:, 25:30) = 255;
img2 = imrotate(img1, 90);
%figure; imshow(img1,'InitialMagnification','fit');
%figure; imshow(img2,'InitialMagnification','fit');
fourier1 = fftshift(fft2(img1));
fourier2 = fftshift(fft2(img2));

figure; imshow(fourier1,'InitialMagnification','fit');
%figure; imshow(fourier2,'InitialMagnification','fit');
fourier1 = abs(fourier1);
fourier2 = abs(fourier2);
figure; imagesc(fourier1);
%figure; imagesc(fourier2);