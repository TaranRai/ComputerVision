%removing noise in RGB images
%medfilt2() only works on 2-d arrays
%it can only work on rgb images if each rgb channel is decomposed and
%concatenated after each channel is filtered

%import image
W = imread('Westminster.jpg');

%add noise
J= imnoise(W, 'salt & pepper', 0.2); 

%filter each channel separately
r = medfilt2(J(:,:,1), [3 3]);
g = medfilt2(J(:,:,2), [3 3]);
b = medfilt2(J(:,:,3), [3 3]);

%reconstruct the image from the r,g,b channels

K= cat(3,r,g,b);
figure
subplot(121); imshow(J);
subplot(122); imshow(K); 
