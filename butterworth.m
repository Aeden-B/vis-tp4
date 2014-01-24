function [imOut] = butterworth(freqCoup, ordre)
im = imread('lena.pgm');%randn(row,col);   % noise picture
row = size(im, 1);
col = size(im, 2);

% Create two matrices, x and y. All elements of x have a value equal to its
% x coordinate relative to the centre, elements of y have values equal to
% their y coordinate relative to the centre. From these two matrices produce
% a radius matrix that gives distances from the middle
[x,y]= meshgrid(-col/2:(col/2-1),-row/2:(row/2-1)); % Creation of two matrices x and y 
radius=sqrt(x.^2+y.^2); % Radius matrix that contains all the distances from the middle
%f(row/2+1,col/2+1)=1; % Avoid division by zero
filter = 1./(1+(radius/freqCoup).^(2*ordre));
imOut = imfilter(im, filter);
figure; imshow(imOut);
end
