%sharpening images

%a high-pass filter can be used to make images look sharper
%such filters emphasise the finer details in the image
%the opposite of a low-pass filter
%works in a similar way except uses a different convolution kernel

%define convolution kernel for sharpening 
K = [0, -1, 0; -1, 5, -1; 0, -1, 0];
%import image
img = imread('Westminster.jpg');
%convert to grayscale
imgG = rgb2gray(img);
%convert to double 
imgd = im2double(imgG);
img1 = imfilter(imgd,K);
%plot image and then convert back to uint8 where uint8 -> (0:255)
subplot(121);imshow(im2uint8(imgG));
subplot(122);imshow(im2uint8(img1));