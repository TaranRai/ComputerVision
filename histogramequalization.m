%histogram equalization

%this enhances the contrast of the images by transforming the values in an 
%intensity image so that the histogram of the output image is approx. flat

img = imread('Hawkes_Bay_NZ.jpg');
figure, img_eq = histeq(img); 
subplot(122); imshow(img_eq);
subplot(121); imshow(img); 
